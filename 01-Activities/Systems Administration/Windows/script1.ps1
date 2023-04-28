Write-Host "This is an example of displaying test on screen with PowerShell" -ForegroundColor "Green"
Write-Host "---------------------------------------------------------------"
Write-Host "Creating a dictionary list about a user"
$info = @{FirstName = "Fluffy"; LastName = "Wabbit"; Age = 30; HairColor = "Black"}
$info.Add('Location','Atlanta') 
$info
$info.values
$info.keys
$info["FirstName"]
Write-Host "Creating a dictionary list of IP addresses"
$ips = @("192.168.1.15", "172.200.2.50", "10.20.5.2", "10.98.50.200", "10.0.0.20")
$ips
$ips -match "^10\."
$ips -notmatch "^10\."
Write-Host "Splitting strings"
"This is just testing splitting in PowerShell" -split " "
"This is just testing splitting in PowerShell" -split " ", 3
Write-Host "Applying Searches"
Get-Process > processes.txt
Get-Content .\processes.txt 
Select-String -Path ".\processes.txt" -Pattern "svchost"
Select-String -Path ".\processes.txt" -Pattern "svchost" -NotMatch | Format-Table