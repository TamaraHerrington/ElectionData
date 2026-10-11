$Header = 'LastName', 'FirstName'

##using a test file to stop killing terminal everytime an error happens
$groupedpartydataFN = Import-Csv -Path ".\data_csv\membersofparliament.csv" -Header $Header | Group-Object -Property FirstName
$groupedpartydataLN = Import-Csv -Path ".\data_csv\membersofparliament.csv" -Header $Header | Group-Object -Property LastName

##this also doens't work - Error: System.Collections.ObjectModel.Collection`1[System.Management.Automation.PSObject]
##probably something going wrong in my mind with how Powershell is storing objects!
$FN = $groupedpartydataFN[3].Group.ToString()
$LN = $groupedpartydataLN[3].Group
#dont need write host!

#This doesn't work - find out why
Write-Host "First Names: $FN"
Write-Host "Last Names: $LN"
