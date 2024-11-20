$countries = @( 'India', 'Australia', 'China')
$capitals = @('New Delhi', 'Canberra', 'Beijing')

Write-Host "Select country" -ForegroundColor Yellow
for($i =0; $i -lt $countries.count; $i++){
    Write-Host ($i+1)":" $countries[$i] -ForegroundColor Cyan
}

$selectedcountry = Read-Host "Please select country"
Write-Host $countries[$selectedcountry-1]"'s capital is"$capitals[$selectedcountry-1] -ForegroundColor Green