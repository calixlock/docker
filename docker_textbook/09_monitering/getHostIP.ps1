$hostIP = $(Get-NetIPConfiguration | Where-Object { $_.IPv4DefaultGateway -ne $null }).IPv4Address.IPv4Address
Write-Output "Host IP Address: $hostIP"

# CMD 실행 명령어
## powershell.exe -ExecutionPolicy Bypass -File ./getHostIP.ps1