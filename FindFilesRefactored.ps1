 
param 
( 
    [parameter()][string] $FolderPath, 
    [parameter()][string] $FileExtension 
) 

 
If (Test-Path $FolderPath) 
{ 
    $Dir = get-childitem $FolderPath -recurse 
    $List = $Dir | where {$_.extension -eq $FileExtension} 
    $List | Format-Table -Property Name, DirectoryName
} 
else 
{ 
    "Folder path is incorrect." 
} 
 
