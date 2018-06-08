Import-Module VMware.VimAutomation.Core

$vCenter = vcenter.domain.com
$vCCluster = cluster-01

connect-viserver $vCenter
 
get-cluster $vCCluster | get-vm |? {$_.name -match 'vview' -and $_.PowerState -eq 'PoweredOn'} | Stop-VMGuest -Confirm:$false