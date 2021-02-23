$ErrorActionPreference = 'Stop'
$packageName    = '8x8Work'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://vod-updates.8x8.com/ga/work-32-msi-v7.3.6-2.msi'
$checksum       = 'D53CE59D6239EAA58315F6E98F9FBDB9AA85F413451435F26B3D2488EFE61C35'
$url64          = 'https://vod-updates.8x8.com/ga/work-64-msi-v7.3.6-2.msi'
$checksum64     = 'D8B48568D83D87DCD73C17FE1777D14E923AF0A06C8818AC2829C83E010004A0'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'MSI'
  url            = $url
  url64          = $url64
  validExitCodes = @(0, 3010, 1641)
  silentArgs     = '/quiet /norestart'
  softwareName   = '8x8 - Work'
  checksum       = $checksum
  checksumType   = 'sha256'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs  