$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path $PSScriptRoot -Parent
$packageRoot = Join-Path $projectRoot 'build/f6-vsix'
$extensionRoot = Join-Path $packageRoot 'extension'
New-Item -ItemType Directory -Force -Path $extensionRoot | Out-Null
Copy-Item -LiteralPath (Join-Path $projectRoot 'tools/vscode-f6/package.json') -Destination $extensionRoot
Copy-Item -LiteralPath (Join-Path $projectRoot 'tools/vscode-f6/extension.js') -Destination $extensionRoot
$manifest = @'
<?xml version="1.0" encoding="utf-8"?>
<PackageManifest Version="2.0.0" xmlns="http://schemas.microsoft.com/developer/vsx-schema/2011">
  <Metadata>
    <Identity Language="en-US" Id="w3-mf-f6" Version="0.1.0" Publisher="local-w3mf" />
    <DisplayName>W3 MF F6 Map Test</DisplayName>
    <Description xml:space="preserve">Save all and test this Warcraft project.</Description>
    <Categories>Other</Categories>
    <Properties><Property Id="Microsoft.VisualStudio.Code.Engine" Value="^1.75.0" /></Properties>
  </Metadata>
  <Installation><InstallationTarget Id="Microsoft.VisualStudio.Code" /></Installation>
  <Dependencies />
  <Assets><Asset Type="Microsoft.VisualStudio.Code.Manifest" Path="extension/package.json" Addressable="true" /></Assets>
</PackageManifest>
'@
$contentTypes = @'
<?xml version="1.0" encoding="utf-8"?>
<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">
  <Default Extension="json" ContentType="application/json" />
  <Default Extension="js" ContentType="application/javascript" />
  <Default Extension="vsixmanifest" ContentType="text/xml" />
</Types>
'@
Set-Content -LiteralPath (Join-Path $packageRoot 'extension.vsixmanifest') -Value $manifest -Encoding UTF8
Set-Content -LiteralPath (Join-Path $packageRoot '[Content_Types].xml') -Value $contentTypes -Encoding UTF8
$vsix = Join-Path $projectRoot 'build/w3-mf-f6-0.1.0.vsix'
if (Test-Path -LiteralPath $vsix) { Remove-Item -LiteralPath $vsix }
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::CreateFromDirectory($packageRoot, $vsix)
& code.cmd --install-extension $vsix --force
if ($LASTEXITCODE -ne 0) { throw 'VS Code extension installation failed' }
$resolvedPackageRoot = (Resolve-Path -LiteralPath $packageRoot).Path
$expectedPackageRoot = [System.IO.Path]::GetFullPath((Join-Path $projectRoot 'build/f6-vsix'))
if ($resolvedPackageRoot -ne $expectedPackageRoot) { throw 'Unexpected extension staging directory' }
Remove-Item -LiteralPath $resolvedPackageRoot -Recurse -Force
Remove-Item -LiteralPath $vsix -Force
Write-Host 'F6 extension installed. Open this project, or reload its VS Code window.'
