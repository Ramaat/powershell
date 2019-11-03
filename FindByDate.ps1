$Path = "k:\"
Get-ChildItem $Path -recurse -include @("*.tif*","*.ps1","*.pdf", "*.txt") | 
    Where-Object { $_.CreationTime -ge "10/31/2019" -and $_.CreationTime -le "11/03/2019" }