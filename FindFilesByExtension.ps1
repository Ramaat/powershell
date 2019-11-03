<# 
.SYNOPSIS 
Shows a list of files for a given file extension. 
 
.DESCRIPTION 
Function to retrieve files by extension. 
 
.PARAMETER FolderPath 
The folder path to search. 
 
.PARAMETER FileExtension 
The file extension to search for. 
 
.EXAMPLE 
PS> .\Get-FilesByExtension.ps1 -FolderPath 'C:\Windows' -FileExtension '.dll' 
#> 

 
param 
( 
    [parameter()][string] $FolderPath, 
    [parameter()][string] $FileExtension 
) 

function TestPath($FPath)  
{ 
    $FileExists = Test-Path $FPath 
    If ($FileExists -eq $True)  
    { 
        Return $true 
    } 
    Else  
    { 
        Return $false 
    } 
}

 
$Result = (TestPath($FolderPath)); 
 
If ($Result) 
{ 
    $Dir = get-childitem $FolderPath -recurse 
    $List = $Dir | where {$_.extension -eq $FileExtension} 
    $List | Format-Table -Property Name, DirectoryName
} 
else 
{ 
    "Folder path is incorrect." 
} 
 
