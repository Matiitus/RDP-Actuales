# === Backup de archivos a Azure Archive desde Hyper-V ===

$Source = "D:\Compartido"
$BackupName = "fileserver_{0}.zip" -f (Get-Date -Format "yyyy-MM-dd")
$TempDir = "C:\Backups"
$AzureContainer = "https://mialmacenamiento.blob.core.windows.net/contenedor"
$AzCopyPath = "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy\AzCopy.exe"

if (!(Test-Path $TempDir)) { New-Item -Path $TempDir -ItemType Directory }
Compress-Archive -Path $Source -DestinationPath "$TempDir\$BackupName"
& "$AzCopyPath" copy "$TempDir\$BackupName" "$AzureContainer/$BackupName?sas_token_aqui" --blob-type BlockBlob --tier Archive
Remove-Item "$TempDir\$BackupName"
"$($BackupName) subido a Azure Archive el $(Get-Date)" | Out-File -FilePath "C:\Backups\backup_azure.log" -Append
