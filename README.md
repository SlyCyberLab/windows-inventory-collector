# Computer Inventory Collector

A PowerShell-based tool for collecting comprehensive system information from Windows computers and exporting it to CSV format. Perfect for IT administrators, system audits, and asset management.

## Features

- **Hardware Information**: Manufacturer, model, serial number, processor details, RAM, and disk space
- **System Details**: Computer name, operating system, version, and architecture
- **Network Information**: MAC address of primary network adapter
- **CSV Export**: Clean, structured output ready for spreadsheets or databases
- **Simple Execution**: One-click batch file launcher

## Files

- `Run_InventoryCollector.bat` - Simple batch launcher that handles PowerShell execution policy
- `InventoryCollector.ps1` - Main PowerShell script that collects system information

## Quick Start

1. **Right-click** `Run_InventoryCollector.bat` and select **"Run as administrator"**
2. Find your inventory report at `C:\ComputerInventory.csv`

### Alternative: Direct PowerShell Method
1. Open **PowerShell as administrator**
2. Copy and paste the script code directly into the console
3. Press Enter to execute

## Collected Information

The script gathers the following system details:

| Field | Description |
|-------|-------------|
| ComputerName | Windows computer name |
| Manufacturer | System manufacturer (Dell, HP, etc.) |
| Model | Computer model number |
| SerialNumber | System serial number |
| OS | Operating system name |
| OSVersion | OS version number |
| Architecture | System architecture (x64, x86) |
| Processor | CPU model and specifications |
| Cores | Number of physical CPU cores |
| LogicalProcessors | Number of logical processors |
| RAM_GB | Total system RAM in gigabytes |
| DiskSize_C_GB | C: drive capacity in gigabytes |
| MACAddress | MAC address of primary network adapter |

## Requirements

- Windows operating system
- PowerShell (included with Windows)
- **Administrator privileges required** for complete hardware access and writing to C: drive

## Usage Options

### Method 1: Batch File (Recommended)
Right-click `Run_InventoryCollector.bat` and select **"Run as administrator"**

### Method 2: Direct PowerShell
Open **PowerShell as administrator** and copy-paste the script code from `InventoryCollector.ps1`

### Method 3: PowerShell Script File
```powershell
# Open PowerShell as administrator, then:
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
.\InventoryCollector.ps1
```

## Output

The script creates a CSV file at `C:\ComputerInventory.csv` with all collected information. The file can be:
- Opened in Excel or Google Sheets
- Imported into databases
- Combined with other inventory files for fleet management
- Used for compliance reporting

## Customization

You can modify the script to:
- Change the output file location by editing the `$csvPath` variable
- Add additional WMI/CIM queries for more system information
- Filter network adapters differently
- Include multiple disk drives
- Add timestamp information

## Common Use Cases

- **IT Asset Management**: Track hardware specifications across your organization
- **Compliance Auditing**: Generate reports for security and compliance requirements
- **Hardware Planning**: Identify systems needing upgrades or replacement
- **Remote Inventory**: Deploy via Group Policy or remote management tools
- **Vendor Management**: Provide accurate system information for support requests

## Troubleshooting

**Script won't run**: Ensure PowerShell execution policy allows script execution. The batch file handles this automatically.

**Missing information**: Run as administrator for complete hardware access.

**Network adapter issues**: The script selects the first active, non-virtual adapter. Modify the filter if needed.

**Permission denied**: Ensure you have write access to the C: drive or change the output path.

## Security Notes

- The script only reads system information and doesn't modify anything
- No sensitive data like passwords or user information is collected
- MAC addresses are included for network identification purposes
- Review the script before running in sensitive environments

## Contributing

Feel free to submit issues, fork the repository, and create pull requests for improvements.

## License

This project is open source. Please check the repository for specific license terms.
