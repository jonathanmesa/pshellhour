<# 
Demo : #ExecutionPolicy
#>
Get-ExecutionPolicy -List

#Change error preference
Set-ExecutionPolicy -ExecutionPolicy "Restricted"     #Scripts cannot be run
Set-ExecutionPolicy -ExecutionPolicy "AllSigned" #Runs a script only if signed
Set-ExecutionPolicy -ExecutionPolicy "RemoteSigned" #Runs all local scripts
Set-ExecutionPolicy -ExecutionPolicy "Undefined"  #All scripts from all sources can be run without signing


C:\Temp\scope.ps1

