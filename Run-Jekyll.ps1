param(
    [string]$Config = ".\config\example.config.json",
    [switch]$Training
)

$ErrorActionPreference = "Stop"

Set-Location $PSScriptRoot

. ".\src\utils\Logger.ps1"
. ".\src\core\Jekyll-Core.ps1"

Write-Log "=== NeonLab Jekyll run started. Training=$Training ==="

Start-Jekyll -ConfigPath $Config -Training:$Training

Write-Log "=== NeonLab Jekyll run finished. ==="
