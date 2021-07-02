using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata)

Set-AzAppServicePlan `
    #replace the placeholder <appServicePlanName> with the name of the Azure App Service Plan to scale up
    -Name <appServicePlanName> `
    #Replace the placeholder <appServicePlanResourceGroupName> with the name of the resource group which contains the Azure App Service Plan
    -ResourceGroupName <appServicePlanResourceGroupName> -Tier Standard -WorkerSize Medium

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
    StatusCode = [HttpStatusCode]::OK
})
