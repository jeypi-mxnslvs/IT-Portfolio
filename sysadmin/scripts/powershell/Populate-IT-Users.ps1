<#
.SYNOPSIS
    Automated Active Directory User Provisioning Script.
.DESCRIPTION
    Creates 10 dummy user accounts with random passwords in a specified AD Organizational Unit.
    Supports -WhatIf and -Confirm safety switches via [CmdletBinding()].
.EXAMPLE
    .\Populate-IT-Users.ps1 -WhatIf
    .\Populate-IT-Users.ps1 -TargetOU "OU=IT,OU=Departments,OU=Corps-Object,DC=home,DC=local"
#>

[CmdletBinding(SupportsShouldProcess = $true)]
param (
    [string]$DomainDN = (Get-ADDomain).DistinguishedName,
    [string]$TargetOU = "OU=IT,OU=Departments,OU=Corps-Object,$DomainDN"
)

$firstNames = @("Alex", "Jordan", "Taylor", "Morgan", "Sam", "Chris", "Pat", "Riley", "Casey", "Dakota")
$lastNames  = @("Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller", "Davis", "Rodriguez", "Martinez")

Write-Host "Targeting OU: $TargetOU" -ForegroundColor Cyan

for ($i = 0; $i -lt 10; $i++) {
    $firstName = $firstNames[$i]
    $lastName  = $lastNames[$i]
    
    $samAccount = ($firstName.Substring(0,1) + $lastName).ToLower()
    $upn        = "$samAccount@$((Get-ADDomain).DNSRoot)"
    $displayName = "$firstName $lastName"

    $plainPassword = -join ((33..126) | Get-Random -Count 14 | ForEach-Object {[char]$_})
    $securePassword = ConvertTo-SecureString $plainPassword -AsPlainText -Force

    try {
        if ($PSCmdlet.ShouldProcess($upn, "Create IT User in AD")) {
            New-ADUser -Name $displayName `
                       -GivenName $firstName `
                       -Surname $lastName `
                       -SamAccountName $samAccount `
                       -UserPrincipalName $upn `
                       -Path $TargetOU `
                       -AccountPassword $securePassword `
                       -ChangePasswordAtLogon $true `
                       -Enabled $true `
                       -ErrorAction Stop

            Write-Host "CREATED: $displayName ($samAccount) | Password: $plainPassword" -ForegroundColor Green
        }
    }
    catch {
        Write-Warning "FAILED to create $samAccount. Reason: $_"
    }
}
