$Path = "S:\pictures\"
gci $Path -file -recurse | 
Group-Object Length | 
Where-Object { $_.Count -gt 1 } | 
select -ExpandProperty group | 
foreach  {get-filehash -literalpath $_.fullname} | 
group -property hash | 
where { $_.count -gt 1 } | 
select -ExpandProperty group | 
select hash, path