$directoryPath = "C:\seccat"  # Замените на фактический путь к каталогу
$auditRule = New-Object System.Security.AccessControl.FileSystemAuditRule("Everyone", [System.Security.AccessControl.ObjectAceType]::ExecuteFile, "Failure")
$directoryACL = Get-Acl -Path $directoryPath
$directoryACL.AddAuditRule($auditRule)
Set-Acl -Path $directoryPath -AclObject $directoryACL
