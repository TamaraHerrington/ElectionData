

##get 10 names from the csv list 

##this wants to be get-csv bc get-content might not be creating the object that i think it is
$n = Get-Content -Path ".\data_csv\membersofparliament.csv" -TotalCount 1

$n


##do loop to search for name groupings?

#move the while loop starter OUT OF THE LOOP 
 $a = 1

do{
    $names = Get-Content -Path ".\data_csv\membersofparliament.csv" -TotalCount 1

    Write-Host  $names.toLower()
    $a++
}
while($a -le 10)
#TODO - add in the movenext bit - might need to reformat this do loop into a foreach but we move

#THIS IS ONLY OUTPUTTING FIRST NAME, LAST NAME BECAUSE IT'S NOT MOVING TO THE NEXT LINE YET!!

# $a = 1 
# Do
# {
#  "Starting Loop $a"
#  $a
#  $a++
#  "Now `$a is $a"
# } While ($a -le 5)