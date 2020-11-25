param(
    [string]$Server = "127.0.0.1",
    [int]$Port = 1433,
    [string]$DbUser = "sa",
    [System.Security.SecureString]$Password = (Read-Host -Prompt "Enter password" -AsSecureString)
)

$ErrorActionPreference = "Stop"

$Ptr = [System.Runtime.InteropServices.Marshal]::SecureStringToCoTaskMemUnicode($Password)
$CleartextPassword = [System.Runtime.InteropServices.Marshal]::PtrToStringUni($Ptr)


$query = Get-Content create_db.sql -Raw

Invoke-sqlcmd -ServerInstance "$Server,$Port" -Username $DbUser -Password $CleartextPassword -Query $query
