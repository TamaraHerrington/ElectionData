

##get 10 names from the csv list 
$tennames = Get-Content -Path .\data_csv\membersofparliament.csv -TotalCount 10 

##idk wtf she's doing but its not what i want
foreach($name in $tennames){
    Write-Host "- $tennames.ToLower()"
    #take first name and last name - format - and then output as key:value pair
}
$tennames

##foreach loop to search for name groupings?
