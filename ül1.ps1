﻿# define data arrays
$Array1 = @(1, 2, 3)
$Array2 = @(4, 5, 6)

#define empty result array
$array3 = @()

#add new values to empty arrat
$Array3 += $Array1[0] + $Array2[0]
$Array3 += $Array1[1] + $Array2[1]
$Array3 += $Array1[2] + $Array2[2]

#output result array
$array3