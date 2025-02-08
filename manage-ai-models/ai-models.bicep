targetScope = 'subscription'

@description('Location of OpenAI resource.')
param location string

@description('Resource group containing OpenAI resource.')
param openaiResourceGroupName string

@description('Name of OpenAI resource.')
param openaiName string

@description('OpenAI deployment models.')
param openaiDeployments array

module aimodels 'br/public:avm/res/cognitive-services/account:0.8.0' = {
  scope: az.resourceGroup(openaiResourceGroupName)
  name: 'ai-models-${uniqueString(deployment().name, location, openaiName)}'
  params: {
    name: openaiName
    kind: 'AIServices'
    customSubDomainName: openaiName
    deployments: openaiDeployments
    location: location
    publicNetworkAccess: 'Disabled'
  }
}
