param(
    [string]$certDir = "$HOME\.cockroach-certs",
    [string]$hostName = "127.0.0.1"
)

cat reset_db.sql | cockroach sql --host $hostName --certs-dir $certDir
