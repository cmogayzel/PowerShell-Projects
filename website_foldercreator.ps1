# Ask user for project folder name
$projectName = Read-Host "Enter the name of the project folder"

# Get current drive letter (e.g., C, D, E)
$driveLetter = (Get-Location).Drive.Name
$rootPath = "$driveLetter`:\Websites"   # adds back :\ to make it a full root path

# Project paths (created directly under the drive root)
$mainPath = Join-Path $rootPath $projectName
$cssPath  = Join-Path $mainPath "CSS"
$imgPath  = Join-Path $mainPath "images"
$jsPath   = Join-Path $mainPath "JS"

# Create directories
New-Item -ItemType Directory -Path $mainPath -Force | Out-Null
New-Item -ItemType Directory -Path $cssPath -Force | Out-Null
New-Item -ItemType Directory -Path $imgPath -Force | Out-Null
New-Item -ItemType Directory -Path $jsPath -Force | Out-Null

# Create files
New-Item -ItemType File -Path (Join-Path $mainPath "index.html") -Force | Out-Null
New-Item -ItemType File -Path (Join-Path $cssPath "style.css") -Force | Out-Null
New-Item -ItemType File -Path (Join-Path $jsPath "script.js") -Force | Out-Null

Write-Host "Website project '$projectName' created at $mainPath"
