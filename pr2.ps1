$hash1 =@{"Name"="John", "Joe","Mary"; DaysWorked=12, 20, 18}
$hash2 =@{"Name"="John", "Joe","Mary"; SalaryPerDay=100, 120, 150}

$Johnsalary = $hash1.Daysworked[0] * $hash2.SalaryPerDay[0]
$Joesalary = $hash1.Daysworked[1] * $hash2.SalaryPerDay[1]
$Marysalary = $hash1.Daysworked[2] * $hash2.SalaryPerDay[2]

$hash3 =@{Name=$hash1.Name[0], $hash1.Name[1], $hash1.Name[2];Salary=$Johnsalary,$Joesalary,$Marysalary}
$hash3