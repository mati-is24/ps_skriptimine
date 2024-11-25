Get-ChildItem -Path C:\Users\mati\temp\test

Write-Host

$result = Get-ChildItem C:\Users\mati\temp\test | where{$_.Name -like '*.csv'} | Select Name, length
    $result.Length/1Kb
     $result.Length/1MB

     Write-Host "filename: $($result.Name)"
     Write-Host "Size in KB $($result.Length/1024)"
     Write-Host "Size in MB $($result.Length/1MB)"