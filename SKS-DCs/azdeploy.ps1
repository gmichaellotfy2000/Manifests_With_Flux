param (
    $templateFileName,
    $parametersFileName,
    $rg,
    $rgLocation
)

if (!(Get-AzResourceGroup -Name $rg -ErrorAction SilentlyContinue)) {
    New-AzResourceGroup -Name $rg -Location $rgLocation
}

New-AzResourceGroupDeployment -Name deploy1234 -ResourceGroupName $rg -Mode Incremental -TemplateFile $templateFileName -TemplateParameterFile $parametersFileName -verbose