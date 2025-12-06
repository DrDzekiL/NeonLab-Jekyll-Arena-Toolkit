. "$PSScriptRoot\..\utils\Logger.ps1"

function Invoke-ArenaScan {
    param(
        [string[]]$ScanTargets,
        [switch]$Training
    )

    if (-not $ScanTargets -or $ScanTargets.Count -eq 0) {
        Write-Log "No scan targets provided" "WARN"
        return
    }

    Write-Log ("Starting Arena scan. Training={0}" -f [bool]$Training)

    foreach ($t in $ScanTargets) {
        Write-Log "Scanning target [$t] (Training=$Training)"
        Start-Sleep -Milliseconds 200   # имитация работы
    }

    Write-Log "Arena scan finished."
}
