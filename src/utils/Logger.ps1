function Write-Log {
    param(
        [string]$Message,
        [ValidateSet("INFO","WARN","ERROR")]
        [string]$Level = "INFO"
    )

    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $line = "[{0}] [{1}] {2}" -f $timestamp, $Level, $Message

    if (-not (Test-Path ".\logs")) {
        New-Item -ItemType Directory -Path ".\logs" | Out-Null
    }

    $line | Out-File ".\logs\jekyll.log" -Append -Encoding UTF8
    Write-Host $line
}
