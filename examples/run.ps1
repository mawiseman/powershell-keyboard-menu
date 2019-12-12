# Import Modules

Import-Module $PSScriptRoot\..\src\menu.psm1

# Prepare Variables

$orderedMenu = [ordered]@{}

$orderedMenu.Add("Value 1", "Option One")
$orderedMenu.Add("Value 2", "Option Two")
$orderedMenu.Add("Value 3", "Option Three")
$orderedMenu.Add("Value 4", "Option Four")

$unorderedMenu = @{}

ForEach($key in $orderedMenu.Keys) {
    $unorderedMenu.Add($key, $orderedMenu[$key])
}


# Example 1 Ordered Menu

Write-Host ""
Write-Host "Orderd List" -ForegroundColor Green
Write-Host "===========================================================" -ForegroundColor Green

$selectedOption = Invoke-ShowMenu -menuTitle "Unordered List" -menuEntries $orderedMenu

Write-Host ""
Write-Host "The value of your choice is: $selectedOption"   -ForegroundColor Red

# Example 1 Un-ordered Menu

Write-Host ""
Write-Host "Unordered List" -ForegroundColor Green
Write-Host "===========================================================" -ForegroundColor Green

$selectedOption = Invoke-ShowMenu -menuTitle "Unordered List" -menuEntries $unorderedMenu

Write-Host ""
Write-Host "The value of your choice is: $selectedOption"  -ForegroundColor Red

Write-Host ""