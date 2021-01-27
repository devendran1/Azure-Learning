# Create variables
$webappname ="mywebapp$(Get-Random)"
$rgname='webapps-dev-rg'
$location ='eastus'

# Create a resource group

New-AzResourceGroup -Name $rgname -Loacation $location

# Create an App Service plan in F1 tier
New-AzAppServicePlan -Name $webappname -Location $location  -ResourceGroupName $regname -Tier F1

New-AzWebApp -Name $webappname -Location $location -AppServicePlan $webappname -ResourceGroupName $rgname
