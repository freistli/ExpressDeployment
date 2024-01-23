$baseName = "ResourceName"
$subscriptionId = "TargetAzureSubscriptionID"
$deployUrl = "DeployZipUrl"
$funcitonUrl = "FunctionZipUrl"

$azureShell = $true

Invoke-WebRequest -Uri $deployUrl -OutFile Deployment.zip
expand-archive -path Deployment.zip -Force
cd ./Deployment/Deployment
./deploy.ps1 -BaseName $baseName -FunctionAppZipPath $funcitonUrl -UpateFunctionSettings $true -SubscriptionId $subscriptionId -azureShell $azureShell
cd ../..