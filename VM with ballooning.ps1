
Add-PSSnapin VMware.VimAutomation.Core
Connect-VIServer -Server vCenter01

$vmall = Get-View -ViewType VirtualMachine | Where-Object { $_.Summary.QuickStats.BalloonedMemory -ne "0" }

$findball = @()
foreach ($vm in $vmall)
{
	$select = "" | Select-Object VM, `
									 BalloonedMemory
	
	$select.VM = $vm.Name
	$select.BalloonedMemory = $vm.Summary.QuickStats.BalloonedMemory
	$findball += $select
	Restart-VM -VM $vm.Name -RunAsync
}
$findball