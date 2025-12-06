. "$PSScriptRoot\..\utils\Logger.ps1"

function Start-Jekyll {
    param(
        [string]$ConfigPath,
        [switch]$Training
    )

    if (Test-Path $ConfigPath) {
        $raw = Get-Content $ConfigPath -Raw
        $cfg = $raw | ConvertFrom-Json
        Write-Log "Loaded config from $ConfigPath"
    } else {
        Write-Log "Config not found at $ConfigPath, using defaults" "WARN"
        $cfg = [pscustomobject]@{
            Mode        = if ($Training) { "Training" } else { "Live" }
            Logging     = $true
            ScanTargets = @("BTC","BNB","ASTER")
        }
    }

    Write-Log ("Mode={0}; Targets={1}" -f $cfg.Mode, ($cfg.ScanTargets -join ", "))

    . "$PSScriptRoot\..\arena\Run-Scan.ps1"

    Invoke-ArenaScan -ScanTargets $cfg.ScanTargets -Training:$Training
}
