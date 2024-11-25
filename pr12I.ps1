function countstart{
    $total = (Get-Service | where{$_.Status -eq 'running'}).Count
    Write-Host "Total services in running state = $($total)"
}

function countstop{
    $total = (Get-Service | where{$_.Status -eq 'stopped'}).Count
    Write-Host "Total services in stopped state = $($total)"
}

function countservice{
    param(
        [string]$status
    )
    $total = (Get-Service | where{$_.Status -eq $status}).Count
    Write-Host "Total services in $($status.ToLower()) state = $($total)"
}

countstart
countstop

countservice -status 'running'
countservice('Stopped')