$UserName = Read-Host "Please enter user name"
$Password = Read-Host  "Please enter password" -AsSecureString
$Name = Read-Host "Please enter full name"
$Description = Read-Host "Please enter description"
$targetGroup = Read-Host "Target Group (Users, Administartors)"
$params = @{ 
    Name = $UserName
    Password = $Password
    FullName = $Name
    Description = $Description
    
}

New-LocalUser @params
Add-LocalGroupMember -Group $targetGroup -Member $UserName