(get-vm) | %{
$vm = $_
echo $vm.name----
$vm.Guest.Nics | %{
$vminfo = $_
echo $vminfo.NetworkName $vminfo.IPAddress $vminfo.MacAddress
	}
}
