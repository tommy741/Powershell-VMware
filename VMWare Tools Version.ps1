get-vm |% { get-view $_.id } | select Name, @{ Name=";ToolsVersion";; Expression={$_.config.tools.toolsVersion}}