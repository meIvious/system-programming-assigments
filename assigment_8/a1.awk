#!/bin/awk -f
BEGIN{
maleSalary=0
maleCount=0
femaleSalary=0
femaleCount=0
}

{
if ( $2 == "m"){
maleSalary += $3
maleCount++
}
else if ( $2 == "f"){
femaleSalary += $3
femaleCount++
}
}

END{
if ( maleCount > 0){
avgmaleSalary = maleSalary / maleCount
}
else{
avgmaleSalary=0
}

if ( femaleCount > 0){
avgfemaleSalary = femaleSalary / femaleCount
}
else{
avgfemaleSalary=0
}

if ( avgmaleSalary > avgfemaleSalary){
print "m"
}
else if (avgfemaleSalary > avgmaleSalary){
print "f"
}
else{
print "b"
}
}
