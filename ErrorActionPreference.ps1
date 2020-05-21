<# 
Demo : #$ErrorActionPreference
#>

#Check Current  Preference
$ErrorActionPreference
#Step Generate an Error
Get-WmiObject Win32_BIOS -computer notonline 
#Change error preference
$ErrorActionPreference = "Inquire"
$ErrorActionPreference = "Continue"
$ErrorActionPreference = "SilentlyContinue"
$ErrorActionPreference = "Stop"

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

# Build in Varible for Errors
$Error



