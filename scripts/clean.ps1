$ErrorActionPreference = 'Stop'
$projectRoot = [System.IO.Path]::GetFullPath((Split-Path $PSScriptRoot -Parent))
# Fixed generated directories only. Source maps, tools and runtime logs are retained.
foreach ($directory in @('build', 'dist', '.npm-cache')) {
    $target = [System.IO.Path]::GetFullPath((Join-Path $projectRoot $directory))
    if (-not $target.StartsWith($projectRoot + '\', [System.StringComparison]::OrdinalIgnoreCase)) {
        throw "Refusing to clean outside project: $target"
    }
    if (Test-Path -LiteralPath $target) {
        $resolved = (Resolve-Path -LiteralPath $target).Path
        if ($resolved -ne $target) { throw "Unexpected resolved path: $resolved" }
        $links = @(Get-Item -LiteralPath $target) + @(Get-ChildItem -LiteralPath $target -Recurse -Force)
        if ($links | Where-Object { $_.Attributes -band [System.IO.FileAttributes]::ReparsePoint }) {
            throw "Refusing to recursively clean a directory containing links: $target"
        }
        Remove-Item -LiteralPath $target -Recurse -Force
        Write-Host "Removed: $directory"
    }
}
