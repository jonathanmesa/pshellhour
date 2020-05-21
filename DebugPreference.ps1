
<# 
Demo : #$DebugPreference
#>
$DebugPreference
$service = Get-Service -Name BITS
Write-Debug $service.Named
#Change error preference
$DebugPreference = "Inquire" # Displays debug message and prompts user to continue (default behavior)
$DebugPreference = "Continue" #Displays debug message and continues with execution
$DebugPreference = "SilentlyContinue" #Debug message is not displayed, and execution continues without interruption
$DebugPreference = "Stop" #Displays debug message and stops execution  Writes error to console

#Example
$DebugPreference = "Continue" #Displays debug message and continues with execution
for ($i=0; $i -lt 10; $i++)
{
  # BEGIN CALLOUT A
  Write-Debug "`$i is $i"
  # END CALLOUT A
  if ($i –gt 2) {
    # Do something here.
  # BEGIN CALLOUT B
    Write-Debug '$i is greater than 2'
  } else {
    Write-Debug '$i is not greater than 2'
  }
  # END CALLOUT B

}

#Syntax Common Errors
Get-Service -Name "its"
Get-AzVmss

if ($service -eq "running" ){


}


Write-Error " eroor"