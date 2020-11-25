param(
    [string]$ClientCert = "$HOME\.cockroach-certs\client.root.crt",
    [string]$Database = "people_registry",
    [string]$Server = "127.0.0.1",
    [int]$Port = 26257,
    [Parameter(Mandatory=$true)][string]$DbUser,
    [System.Security.SecureString]$Password = (Read-Host -Prompt "Enter password" -AsSecureString)
)

$ErrorActionPreference = "Stop"

$Ptr = [System.Runtime.InteropServices.Marshal]::SecureStringToCoTaskMemUnicode($Password)
$CleartextPassword = [System.Runtime.InteropServices.Marshal]::PtrToStringUni($Ptr)

#  cockroach.exe sql --host 127.0.0.1 --user evolve --certs-dir "$HOME\.cockroach-certs" --database people_registry

evolve -c "Server=$Server;Port=$Port;SSL Mode=Require;Client Certificate=$ClientCert;Trust Server Certificate=true;User Id=$DbUser;Password=$CleartextPassword;Database=$Database" migrate cockroachdb
