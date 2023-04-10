<#
.SYNOPSIS
    How to automate installation of applications.

.DESCRIPTION
    This is script installs multiple applications.

.NOTE
    Author: Fluffy Wabbit
#>

# A TRY block to check the script runs successfully
Try
{
    # Declare a varialble to hold the list of applications to install
    $AppInstall = @(
        "git.install",
        "putty",
        "notepadplusplus",
        "filezilla",
        "burp-suite-free-edition",
        "fiddler",
        "wireshark")
    # A foreach loop to iterate over the list of applications
    foreach ($App in $AppInstall)
        {
            # Install the application
            Write-Verbose "Installing app..."
            choco install $App -y
        }
}
# A CATCH block to catch and display any errors during the installation
Catch
{
    Write-Host "Fatal error installing the package $App. Exiting."
    Exit 1
}