<# 
Demo : #$ErrorActionPreference
#>
#Check Current  Preference
$ErrorActionPreference

#Change error preference
$ErrorActionPreference = "Inquire" #Displays error message and prompts user to continue
$ErrorActionPreference = "Continue" #Displays error message and continues executing
$ErrorActionPreference = "SilentlyContinue" #Error message is not displayed, and execution continues w/o interruption
$ErrorActionPreference = "Stop" #Raises terminating error and displays an error message and stops command execution


#Step Generate an Error
Get-WmiObject Win32_BIOS -computer notonline 


#Change Preference at the commandlet level
Get-WmiObject Win32_BIOS -computer notonline  -ErrorAction Inquire 


# Try and Catch 
function Get-Bios {
    BEGIN {
        Remove-Item c:\errors.txt -ErrorAction SilentlyContinue
    }
    PROCESS {
        Try {
            Get-WmiObject Win32_BIOS -comp notonline -ea Stop
    } Catch {
        $_ | Out-File c:\errors.txt -append
     }
    }
}

#Example 2
try{Get-ChildItem c:\missingfolder}
catch [system.exception] { "Caugh The exception"}
Finally {$Error.Clear()};"error cleared"
#Example 3

try{dir c:\missingfolder  -ErrorAction Stop}
catch [system.exception] { "Caugh The exception"}
Finally {$Error.Clear()};"error cleared"

# Build in Varianle for Errors
$Error



