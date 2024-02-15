# Azure NoOps Mission Enclave Sentinel starter

Azure NoOps Mission Enclave Sentinel Environment is a highly opinionated Infrastructure-as-Code (IaC) Sentinel as code implementation that Cyber Security oversight teams may use to establish a cloud security management solution for their workloads and teams to deploy to Azure environments.

This starter is intended to assist customers and partners in quickly establishing a fully functional Microsoft Sentinel environment, thereby speeding up deployment and initial configuration tasks, saving time, and simplifying Microsoft Sentinel setup.

Azure NoOps Mission Enclave Sentinel starter automates the following tasks:

- Enables UEBA with the relevant identity providers (AAD and/or AD)
- Enables health diagnostics for Analytics Rules, Data Connectors and Automation Rules
- Installs Content Hub solutions from a predefined list in three categories: 1st party, Essentials and Training
- Enables Data Connectors from this list:
  - Azure Active Directory (with the ability to select which data types will be ingested)
  - Azure Active Directory Identity Protection
  - Azure Activity (from current subscription)
  - Dynamics 365
  - Microsoft 365 Defender
  - Microsoft Defender for Cloud
  - Microsoft Insider Risk Management
  - Microsoft Power BI
  - Microsoft Project
  - Office 365
  - Threat Intelligence Platforms

## Deployment ##

### Prerequisites ###

You must have [Owner RBAC permissions](https://docs.microsoft.com/en-us/azure/role-based-access-control/built-in-roles#owner) to the subscription(s) you deploy Azure NoOps Mission Enclave Sentinel starter.

The below scenarios to get started on the Mission Enclave Sentinel implementation.

### Deploy with Terraform CLI ###

This implementation has a detailed README.md that will walk you through the deployment steps.

Manual Deployment Details:
| Deployment Methodology | Manual Deployment |
|--------------|--------------|
|Terraform|[Published](./docs/manual-deployment-guide-terraform.md)

>NOTE: Using manual deployment to deploy the infrastructure using the Terraform CLI. This is a good option if you want to learn how to deploy the infrastructure using Terraform CLI. If you want to deploy the infrastructure using GitHub Actions, please use the E2E GitHub Deployment.

### Deploy with GitHub ###

You can deploy Azure NoOps Mission Enclave Sentinel starter using the GitHub Actions. The GitHub Actions will deploy the infrastructure to the Azure subscription you have configured in the GitHub Secrets.

This implementation has a detailed README.md that will walk you through the deployment steps.

E2E GitHub Deployment Details:
| Deployment Methodology | GitHub Actions | Azure DevOps |
|--------------|--------------|--------------|
|Terraform|[Published](./docs/11-e2e-githubaction.md)| Coming soon |

## Limitations ##

## Got feedback ##

Please leverage issues if you have any feedback or request on how we can improve on this repository.

## Data Collection ##

The software may collect information about you and your use of the software and send it to Microsoft. Microsoft may use this information to provide services and improve our products and services. You may turn off the telemetry as described in the repository. There are also some features in the software that may enable you and Microsoft to collect data from users of your applications. If you use these features, you must comply with applicable law, including providing appropriate notices to users of your applications together with a copy of Microsoft's privacy statement. Our privacy statement is located at <https://go.microsoft.com/fwlink/?LinkId=521839>. You can learn more about data collection and use in the help documentation and our privacy statement. Your use of the software operates as your consent to these practices.

## Contributing ##

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit <https://cla.opensource.microsoft.com>.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Legal Notices ##

Microsoft and any contributors grant you a license to the Microsoft documentation and other content
in this repository under the [Creative Commons Attribution 4.0 International Public License](https://creativecommons.org/licenses/by/4.0/legalcode),
see the [LICENSE](LICENSE) file, and grant you a license to any code in the repository under the [MIT License](https://opensource.org/licenses/MIT), see the
[LICENSE-CODE](LICENSE-CODE) file.

Microsoft, Windows, Microsoft Azure and/or other Microsoft products and services referenced in the documentation
may be either trademarks or registered trademarks of Microsoft in the United States and/or other countries.
The licenses for this project do not grant you rights to use any Microsoft names, logos, or trademarks.
Microsoft's general trademark guidelines can be found at <http://go.microsoft.com/fwlink/?LinkID=254653>.

Privacy information can be found at <https://privacy.microsoft.com/en-us/>

Microsoft and any contributors reserve all other rights, whether under their respective copyrights, patents,
or trademarks, whether by implication, estoppel or otherwise.

## Trademarks ##

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft
trademarks or logos is subject to and must follow
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
