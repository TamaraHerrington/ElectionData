###use input object

$Header = 'LastName', 'FirstName'

##using a test file to stop killing terminal everytime an error happens
$groupedpartydataFN = Import-Csv -Path ".\data_csv\membersofparliament.csv" -Header $Header | Group-Object -Property FirstName
$groupedpartydataLN = Import-Csv -Path ".\data_csv\membersofparliament.csv" -Header $Header | Group-Object -Property LastName


##Where-Object LastName -eq "Alexander"

#dont need write host!
 $groupedpartydataFN[3].Group

# foreach($data in $partydata){
#     $FN = $data.FirstName
#     $LN = $data.LastName
#     "MP is: $FN $LN" 
# }

##doesnt want to work??


##-Property $LastName | Where-Object {$LastName.Count -gt 1} 


Write-Host $grouped









##iterates over the csv list






#foreach($mp in $mpslist){
#     $properties = $line | Get-Member -MemberType Properties
#     for($x = 0; $x -lt $properties.Count; $x++){
#         $col = $properties[$x]
#         $colval = $line | Select-Object -ExpandProperty $col.Name
#     }

#     $mp.first_name.ToLower()
# }