# A script that obtains a list of files and/or folders from the current direct and list some of their properties
foreach ($file in Get-ChildItem)
{
    if ($file.length -gt 100KB)
    {
        Write-Host $file
        Write-Host $file.length
        Write-Host $file.lastaccesstime
    }
}