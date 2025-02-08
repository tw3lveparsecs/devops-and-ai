using './ai-models.bicep'

param location = 'australiaeast'

param openaiResourceGroupName = '<enter your resource group name>'

param openaiName = '<enter your existing Azure OpenAI resource name>'

param openaiDeployments = [
  // Add the AI model deployments here example below
  {
    model: {
      format: 'OpenAI'
      name: 'gpt-4-32k'
      version: '0613'
    }
    name: 'gpt-4-32k'
    sku: {
      capacity: 10
      name: 'Standard'
    }
  }
]
