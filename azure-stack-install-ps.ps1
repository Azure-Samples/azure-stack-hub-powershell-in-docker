Start-Process powershell -Verb runAs

Find-PackageProvider -Name 'Nuget' -ForceBootstrap -IncludeDependencies

Import-Module -Name PowerShellGet -ErrorAction Stop
Import-Module -Name PackageManagement -ErrorAction Stop
Get-PSRepository -Name "PSGallery"

Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted 
Install-Module -Name AzureRM.BootStrapper -Force

Get-AzureRMProfile -Update
Use-AzureRmProfile -Profile 2019-03-01-hybrid -Force
Install-Module -Name AzureStack -RequiredVersion 1.8.0
Install-Module -Name Azs.Tools.Admin