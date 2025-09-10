$sourceFolder = Read-Host "Enter source path"
$outputFilePath = Read-Host "Enter Output file path and file name (C:\Test\test.txt)"


Get-ChildItem -Path $sourceFolder | Out-File -FilePath $outputFilePath