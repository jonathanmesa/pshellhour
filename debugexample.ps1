$cn = "localhost"
$process = "notepad"
Get-WmiObject -Class win32_bios -cn $cn
Start-Process $process
Get-Process $process

Set-PSBreakpoint -Command get-process -Script "C:\Users\jomesa\OneDrive - Microsoft\Desktop\Week 4\debugexample.ps1"
Set-PSBreakpoint -script "C:\Users\jomesa\OneDrive - Microsoft\Desktop\Week 4\debugexample.ps1" -Variable cn

."C:\Users\jomesa\OneDrive - Microsoft\Desktop\Week 4\debugexample.ps1"