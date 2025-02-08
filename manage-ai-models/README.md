<!-- @format -->

# Manage AI Models with Bicep

This is a demo on how to manage AI models using Bicep.

## Overview

In this demo, you will learn how to:

- Define and deploy AI models to an existing Azure OpenAI instance using Bicep.
- Automate the deployment process with GitHub Actions.

## GitHub Actions Workflow

To deploy the AI models using GitHub Actions, refer to the [GitHub Actions workflow](../.github/workflows/ai-models.yml).

## Getting Started

1. Clone this repository.
2. Update the `.bicepparam` placeholder values with the resource group name, OpenAI instance name, and the AI models you want to deploy.
3. Update the GitHub workflow placeholders with your Azure subscription ID, client ID, and tenant ID.
4. Trigger the GitHub Actions workflow to deploy the resources.

## Resources

- [Bicep Documentation](https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
