# Deploying the Mission Enclave Sentinel starter using manual deployment

## Table of Contents

- [Prerequisites](#prerequisites)
- [Quickstart](#quickstart)
- [Planning](#planning)  
- [Deployment](#deployment)  
- [Cleanup](#cleanup)  
- [Development Setup](#development-setup)  
- [See Also](#see-also)

This guide describes how to deploy Mission Enclave Sentinel starter using the [Terraform](https://www.terraform.io/) modules at [infrastructure/terraform/](../infrastructure/terraform/).

To get started with Terraform on Azure check out their [tutorial](https://learn.hashicorp.com/collections/terraform/azure-get-started/).

## Prerequisites

- Current version of the [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- The version of the [Terraform CLI](https://www.terraform.io/downloads.html) described in the [.devcontainer Dockerfile](../.devcontainer/Dockerfile)
- An Azure Subscription(s) where you or an identity you manage has `Owner` [RBAC permissions](https://docs.microsoft.com/en-us/azure/role-based-access-control/built-in-roles#owner)

<!-- markdownlint-disable MD013 -->
> NOTE: Azure Cloud Shell is often our preferred place to deploy from because the AZ CLI and Terraform are already installed. However, sometimes Cloud Shell has different versions of the dependencies from what we have tested and verified, and sometimes there have been bugs in the Terraform Azure RM provider or the AZ CLI that only appear in Cloud Shell. If you are deploying from Azure Cloud Shell and see something unexpected, try the [development container](../.devcontainer) or deploy from your machine using locally installed AZ CLI and Terraform. We welcome all feedback and [contributions](../CONTRIBUTING.md), so if you see something that doesn't make sense, please [create an issue](https://github.com/AzureNoOps/ref-scca-enclave-landing-zone-starter/issues/new/choose) or open a [discussion thread](https://github.com/AzureNoOps/ref-scca-enclave-landing-zone-starter/discussions).
<!-- markdownlint-enable MD013 -->

## Quickstart

Below is an example of a Terraform deployment that uses all the defaults in the [TFVARS folder](./../infrastructure/terraform/tfvars/parameters.tfvars) to deploy the Sentinel to one subscription.

>NOTE: Since this reference implementation is designed to use remote state, you will need to comment out the [`backend "local" {}` block in the versions.tf](./../infrastructure/terraform/versions.tf) file. This will allow you to deploy the Sentinel without having to deploy the remote state storage account first.

```bash
cd infrastructure/terraform
terraform init
terraform plan --out anoa.dev.plan --var-file tfvars/parameters.tfvars --var "security_subscription_id=<<subscription_id>>" # supply some parameters, approve, copy the output values
terraform apply anoa.dev.plan
```

## Planning

If you want to change the default values, you can do so by editing the [parameters.tfvars](../infrastructure/terraform/tfvars/parameters.tfvars) file. The following sections describe the parameters that can be changed.

### One Subscription or Multiple

Mission Enclave Sentinel starter can deploy to a single subscription or multiple subscriptions. A test and evaluation deployment may deploy everything to a single subscription, and a production deployment may place each tier into its own subscription.

The optional parameters related to subscriptions are below. At least one subscription is required.

Parameter name | Default Value | Description
-------------- | ------------- | -----------
`security_subscription_id` | '' | Subscription ID for the security subscription. This is the subscription where the security resources will be deployed.

### Mission Enclave Sentinel Remote State Storage Account

The remote state storage account is used to store the Terraform state files. The state files contain the current state of the infrastructure that has been deployed. The state files are used by Terraform to determine what changes need to be made to the infrastructure when a deployment is run.

To find out more about remote state, see the [Remote State documentation](./07-Remote-State-Storage.md).

## Deployment

Mission Enclave Sentinel can be deployed with command-line tools provided with the Terraform CLI in PowerShell.

### Command Line Deployment Using the Terraform CLI in PowerShell

Use the Terraform CLI command `terraform` to deploy Mission Enclave Sentinel across one or many subscriptions. The following sections describe how to deploy Mission Enclave Sentinel using the Terraform CLI in PowerShell.

### Single Subscription Deployment

To deploy Mission Enclave Sentinel into a single subscription, you must first login to Azure.

### Login to Azure CLI

Log in using the Azure CLI.

```BASH
# AZ CLI
az cloud set -n AzureCloud
az login
```

### Set the Environment

```BASH
# AZ CLI
$env:ARM_ENVIRONMENT = "public"
```

>NOTE: If you are deploying to Azure US Government, set the environment to `usgovernment`.

### Terraform init

Before provisioning any Azure resources with Terraform you must [initialize a working directory](https://www.terraform.io/docs/cli/commands/init.html/).

1. Navigate to the directory in the repository that contains the Mission Enclave Sentinel Starter Terraform modules and configuration files:

    ```bash
    cd infrastructure/terraform
    ```

>NOTE: Since this reference implementation is designed to use remote state, you will need to comment out the `backend "local" {}` block in the [versions.tf](./../infrastructure/terraform/versions.tf) file. This will allow you to deploy the Sentinel without having to deploy the remote state storage account first. For more information on remote state, see the [Remote State documentation](../docs/07-Remote-State-Storage.md).

1. Execute `terraform init`

    ```bash
    terraform init
    ```

### Terraform Plan

After initializing the directory, use [`terraform plan`](https://www.terraform.io/docs/cli/commands/plan.html) to provision the resources plan described in `infrastructure/terraform`.

1. From the directory in which you executed `terraform init` execute `terraform plan` with the `--var-file` parameter to specify the path to the `parameters.tfvars` file:

    ```bash
    terraform apply --var-file tfvars/parameters.tfvars --out "anoa.dev.plan"
    ```

1. You'll be prompted for a Security subscription ID and VM Password.

    Supply the subscription ID you want to use for the Security network:

    ```plaintext
    > terraform plan
    var.security_subscription_id
    If specified, identifies the Platform subscription for "Security" for resource deployment and correct placement in the Management Group hierarchy.

    Enter a value:

    ```

 >*NOTE:* If you want to skip the prompts, you can supply the values on the command line using the `--var` parameter. For more information, see the [Terraform CLI documentation](https://www.terraform.io/docs/cli/commands/plan.html#var).

### Terraform Apply

Now run `terraform apply`, by default, Terraform will inspect the state of your environment to determine what resource creation, modification, or deletion needs to occur from the [`terraform plan`](https://www.terraform.io/docs/cli/commands/plan.html) using the output plan and then prompt you for your approval before taking action.

1. From the directory in which you executed `terraform init` execute `terraform apply` with the `anoa.de.plan` parameter:

    ```bash
    terraform apply "anoa.dev.plan"
    ```

>NOTE: Since you are using a output plan file, you will not be prompted for approval to deploy.

1. The deployment will begin. These commands will deploy all of the resources that make up Mission Enclave LZ. Deployment could take up to 45 minutes.

### Apply Complete

When it's complete, you'll see some output values that will be necessary if you want to stand up new workload spoke, or add-on:

```plaintext
Apply complete! Resources: 166 added, 0 changed, 0 destroyed.

Example Outputs:

security_subscription_id = /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/anoa-security-networking-rg/providers/Microsoft.Network/
...
```

### Deploying to Other Clouds

When deploying to another cloud, like Azure US Government, first set the cloud and log in.

Logging into `AzureUSGovernment`:

```BASH
# AZ CLI
az cloud set -n AzureUsGovernment
az login
```

### Deploying to Multiple Subscriptions

To deploy Mission Enclave Sentinel into multiple subscriptions, follow the same steps as deploying to Single Subscription. The only difference is that you will need to add the subscription ID for each subscription you are deploying to on the [`terraform plan`](https://www.terraform.io/docs/cli/commands/plan.html).

Example:

```plaintext
> terraform plan --var-file tfvars/parameters.tfvars --out "anoa.dev.plan" -var "security_subscription_id=00000000-0000-0000-0000-000000000000" -var "subscription_id_identity=00000000-0000-0000-0000-000000000000" -var "subscription_id_operations="\00000000-0000-0000-0000-000000000000" -var "subscription_id_devsecops=00000000-0000-0000-0000-000000000000" -var "vm_admin_password=Password1234!"
```

## Cleanup

If you want to delete an Mission Enclave Sentinel deployment you can use [`terraform destroy`](https://www.terraform.io/docs/cli/commands/destroy.html). If you have deployed more than one Terraform template, e.g., if you have deployed `Sentinel` and then `Add-on`, run the `terraform destroy` commands in the reverse order that you applied them. For example:

```bash
# Deploy core MLZ resources
cd infrastructure/terraform
terraform apply

# Destroy core MLZ resources
cd infrastructure/terraform
terraform destroy
```

Running `terraform destroy` for `infrastructure/terraform` looks like this:

1. From the directory in which you executed `terraform init` and `terraform apply` execute `terraform destroy`:

    ```bash
    terraform destroy
    ```

1. You'll be prompted for a subscription ID. Supply the subscription ID you want to used previously:

    ```plaintext
    > terraform destroy
    var.security_subscription_id
    Subscription ID for the deployment

    Enter a value: 
    ```

1. Terraform will then inspect the state of your Azure environment and compare it with what is described in Terraform state. Eventually, you'll be prompted for your approval to destroy resources. Supply `yes`:

    ```plaintext
    Do you want to perform these actions?
      Terraform will perform the actions described above.
      Only 'yes' will be accepted to approve.

    Enter a value: yes
    ```

This command will attempt to remove all the resources that were created by `terraform apply` and could take up to 45 minutes.

## Development Setup

For development of the Mission Sentinel Starter Terraform templates we recommend using the development container because it has the necessary dependencies already installed. To get started follow the [guidance for using the development container](../.devcontainer/README.md).

## See Also

[Terraform](https://www.terraform.io/)

[Terraform Tutorial](https://learn.hashicorp.com/collections/terraform/azure-get-started/)

[Developing in a container](https://code.visualstudio.com/docs/remote/containers) using Visual Studio Code
