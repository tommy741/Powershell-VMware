
Enter-PSSession -ComputerName con-view.domain.com                                                                                      

cd "C:\Program Files\VMware\VMware View\Server\extras\PowerShell"

.\add-snapin.ps1   

Get-Command | Where-Object{$_.PSSnapin.Name -eq "FIMAutomation"}