# Output file path
$csvPath = "C:\ComputerInventory.csv"

# Get MAC address (first active non-virtual adapter)
$adapter = Get-CimInstance Win32_NetworkAdapterConfiguration |
    Where-Object { $_.IPEnabled -eq $true -and $_.Description -notmatch "Virtual|VPN" } |
    Select-Object -First 1

$macAddress = $adapter.MACAddress

# Get disk size (C drive)
$disk = Get-CimInstance Win32_LogicalDisk -Filter "DeviceID='C:'"
$diskSizeGB = "{0:N2}" -f ($disk.Size / 1GB)

# Gather system info
$info = [PSCustomObject]@{
    ComputerName      = (Get-CimInstance Win32_ComputerSystem).Name
    Manufacturer      = (Get-CimInstance Win32_ComputerSystem).Manufacturer
    Model             = (Get-CimInstance Win32_ComputerSystem).Model
    SerialNumber      = (Get-CimInstance Win32_BIOS).SerialNumber
    OS                = (Get-CimInstance Win32_OperatingSystem).Caption
    OSVersion         = (Get-CimInstance Win32_OperatingSystem).Version
    Architecture      = (Get-CimInstance Win32_OperatingSystem).OSArchitecture
    Processor         = (Get-CimInstance Win32_Processor).Name
    Cores             = (Get-CimInstance Win32_Processor).NumberOfCores
    LogicalProcessors = (Get-CimInstance Win32_Processor).NumberOfLogicalProcessors
    RAM_GB            = "{0:N2}" -f ((Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB)
    DiskSize_C_GB     = $diskSizeGB
    MACAddress        = $macAddress
}

# Export to CSV
$info | Export-Csv -Path $csvPath -NoTypeInformation
Write-Host "✅ Inventory exported to $csvPath"
