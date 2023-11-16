#
# Cleans up stale resources for a give deployment (i.e. resource prefix)
# These usually occur when a deployment is manually deleted and not through the proper CI/CD pipeline
#
# Requires Azure CLI being installed and authenticated
#

function Remove-DiagnosticSettings {
  [CmdletBinding()] # indicate that this is advanced function (with additional params automatically added)
  param (
    $ResourcePrefix = "anoa"
  )

  Write-Host "Using Azure Account:"
  az account show

  # List all resources for a given Prefix tag
  $allResources = az resource list --tag Prefix=$ResourcePrefix | ConvertFrom-Json

  Write-Host "Found $($allResources.count) resources with Prefix $ResourcePrefix"

  foreach($resource in $allResources)
  {
    Write-Host "*** Looking for diagnostic settings in resource $($resource.Name)"
    Remove-DiagnosticSettingsOnResource -ResourceId $resource.Id

    # Special handling for blob storage containers which have their own diagnostic settings
    if($resource.type -eq "Microsoft.Storage/storageAccounts")
    {
      Write-Host "*** Looking for diagnostic settings in blob container sub-resource on storage account $($resource.Name)"
      Remove-DiagnosticSettingsOnResource -ResourceId "$($resource.Id)/blobServices/default"
    }
  }
}

function Remove-DiagnosticSettingsOnResource {
  param (
    $ResourceId
  )

  # List all diagnostic settings for a given ResourceId
  $diagnosticSettings = $(az monitor diagnostic-settings list --resource $ResourceId | ConvertFrom-Json)

  Write-Host "Found $($diagnosticSettings.Count) diagnostic settings"

  foreach($setting in $diagnosticSettings)
  {
    Write-Host "Deleting diagnostic setting: $($setting.name)"
    az monitor diagnostic-settings delete --resource $ResourceId --name $setting.name
  }
}