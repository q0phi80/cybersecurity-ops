<#  
	.SYNOPSIS  
	Installs various tools for security tests

	.DESCRIPTION  
	Original Author: Francisco Donoso (@francisckrs)
	Modified by: q0phi80
	License: MIT  

	Performs a standard chocolatey installation of the most recent stable version of the tools specified. 

	.NOTES 
#>
 
Set-StrictMode -Version Latest

# List of Apps to install 
Try
{
	 $AppInstallStrings =@(
		"git.install",
		"explorersuite",
		"die",
		"dnspy",
		"ilspy",
		"dotpeek",
		"sysinternals",
		"wireshark",
	     	"tcpview",
	     	"smartsniff",
		"burp-suite-free-edition",
		"fiddler",
	     	"procmon",
	     	"processhacker",
	     	"regshot",
	     	"procexp",
	     	"ghidra",
	     	"radare2",
	     	"ida-free",
		"ollydbg",
		"x64dbg.portable",
		"javadecompiler-gui",
		"jadx",
		"autopsy",
		"putty",
		"brave",
		"notepadplusplus",
		"pebear",
		"filezilla",
		"visualstudio2022community",
		"reshack")
Foreach ($AppString in $AppInstallStrings)
	{
		# Install the app
		choco install $AppString -y
	}
}
Catch 
{
	Write-Host "Fatal erorr installing package $AppString. Exiting."	
	Exit 1
}
