param(
    [string]$ClientCert = "$HOME\.cockroach-certs",
    [string]$Database = "people_registry",
    [string]$Server = "127.0.0.1",
    [int]$Port = 26257,
    [Parameter(Mandatory=$true)][string]$DbUser,
    [System.Security.SecureString]$Password = (Read-Host -Prompt "Enter password" -AsSecureString)
)

$ErrorActionPreference = "Stop"

$Ptr = [System.Runtime.InteropServices.Marshal]::SecureStringToCoTaskMemUnicode($Password)
$CleartextPassword = [System.Runtime.InteropServices.Marshal]::PtrToStringUni($Ptr)

$sql = Get-Content .\create_db+user.sql -Raw

$sql = $sql -Replace "{{database}}", $Database
$sql = $sql -Replace "{{user}}", $DbUser
$sql = $sql -Replace "{{password}}", $CleartextPassword

write-host $sql

echo $sql | cockroach sql --certs-dir $ClientCert --host $Server
