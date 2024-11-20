$data = Import-Csv C:\Users\mati\ps_skriptimine\data.csv

$schooldata = @()
ForEach($persondata in $data){

    $persondata.Age = [int]$persondata.Age
    $school = ""

    if($persondata.Age -ge 4 -and $persondata.Age -le 10){
        $school = "Junior"
    } elseif($persondata.Age -ge 11 -and $persondata.Age -le 17){
    $school = "Senior"
    }

    $schooldata += [PSCustomObject]@{'Name'=$persondata.Name; 'School'=$school}
 }