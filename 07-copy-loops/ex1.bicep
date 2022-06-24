//ex1
param storageAccountNames array = [
  'saauditus'
  'saauditeurope'
  'saauditapac'
]

resource storageAccountResources 'Microsoft.Storage/storageAccounts@2021-01-01' = [for storageAccountName in storageAccountNames: {
  name: storageAccountName
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}]
