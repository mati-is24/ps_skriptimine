while(Get-Process | where{$_.ProcessName -eq "notepad"}){
    Write-Host "Notepad is runing"
}