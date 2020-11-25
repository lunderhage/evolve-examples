param(
    [string]$Database = "people_registry",
    [string]$Server = "127.0.0.1",
    [int]$Port = 1433,
    [string]$DbUser = "sa",
    [System.Security.SecureString]$Password = (Read-Host -Prompt "Enter password" -AsSecureString)
)

$ErrorActionPreference = "Stop"

$Ptr = [System.Runtime.InteropServices.Marshal]::SecureStringToCoTaskMemUnicode($Password)
$CleartextPassword = [System.Runtime.InteropServices.Marshal]::PtrToStringUni($Ptr)

evolve -c "Server=$Server;User Id=$DbUser;Password=$CleartextPassword;Database=$Database" -s dbo --enable-cluster-mode false migrate sqlserver
