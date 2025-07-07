# 📋 Windows Computer Inventory Collector

![Windows 10+](https://img.shields.io/badge/Windows-10%2F11-blue?logo=windows&logoColor=white)
![Tested](https://img.shields.io/badge/Tested-Yes-brightgreen)
![Shell](https://img.shields.io/badge/Shell-PowerShell-blue?logo=powershell&logoColor=white)
![License](https://img.shields.io/github/license/Emslyyy/windows-inventory-collector)

A PowerShell-based tool for collecting comprehensive system information from Windows computers and exporting it to CSV format. Perfect for IT administrators, system audits, and asset management across single machines or entire fleets.

---

## 📊 Collected Information

### 🖥️ **Hardware Specifications**
- Computer name, manufacturer, and model
- System serial number for asset tracking
- Processor details (name, cores, logical processors)
- Total RAM in gigabytes

### 💾 **Storage & Network**
- C: drive capacity in gigabytes
- Primary network adapter MAC address
- Excludes virtual and VPN adapters for accuracy

### 🔧 **Operating System Details**
- Windows version and caption
- OS version number and architecture (x64/x86)
- Complete system specifications for compatibility checks

---

## 🎯 Key Features

| Feature | Description |
|---------|-------------|
| **One-Click Execution** | Simple batch file launcher handles PowerShell policies |
| **Comprehensive Data** | 13 key system attributes in structured format |
| **CSV Export** | Clean, spreadsheet-ready output for analysis |
| **Network Filtering** | Intelligently selects physical network adapters |
| **Asset Tracking** | Includes serial numbers and MAC addresses |
| **Fleet Ready** | Easily deployable across multiple machines |

---

## 📋 Data Fields Captured

| Field | Description | Use Case |
|-------|-------------|----------|
| `ComputerName` | Windows computer name | Network identification |
| `Manufacturer` | System manufacturer (Dell, HP, etc.) | Vendor management |
| `Model` | Computer model number | Hardware standardization |
| `SerialNumber` | System serial number | Asset tracking |
| `OS` | Operating system name | Compatibility planning |
| `OSVersion` | OS version number | Update management |
| `Architecture` | System architecture (x64, x86) | Software deployment |
| `Processor` | CPU model and specifications | Performance assessment |
| `Cores` | Number of physical CPU cores | Workload planning |
| `LogicalProcessors` | Number of logical processors | Threading optimization |
| `RAM_GB` | Total system RAM in gigabytes | Memory management |
| `DiskSize_C_GB` | C: drive capacity in gigabytes | Storage planning |
| `MACAddress` | Primary network adapter MAC | Network management |

---

## ⚠️ Requirements

- **Administrator privileges required** for complete hardware access
- Windows 10 or 11
- PowerShell (included with Windows)
- Write access to C: drive for CSV output

---

## 🚀 Usage

### Method 1: Batch File (Recommended)
1. Right-click `Run_InventoryCollector.bat` and select **"Run as administrator"**
2. Wait for completion message
3. Open `C:\ComputerInventory.csv` in Excel or your preferred spreadsheet application

### Method 2: Direct PowerShell
1. Open **PowerShell as administrator**
2. Copy and paste the script code from `InventoryCollector.ps1`
3. Press Enter to execute

---

## 📄 Sample Output

```csv
ComputerName,Manufacturer,Model,SerialNumber,OS,OSVersion...
WORKSTATION-01,Dell Inc.,OptiPlex 7090,ABC12345,Microsoft Windows 11 Pro,10.0.22621...
```

**Console Output:**
```
✅ Inventory exported to C:\ComputerInventory.csv
```

---

## 🔧 Common Use Cases

- **IT Asset Management**: Track hardware specifications across your organization
- **Compliance Auditing**: Generate reports for security and compliance requirements  
- **Hardware Planning**: Identify systems needing upgrades or replacement
- **Remote Inventory**: Deploy via Group Policy or remote management tools
- **Vendor Management**: Provide accurate system information for support requests
- **License Management**: Correlate software licensing with hardware inventory

---

## 🛠️ Customization Options

The script can be easily modified to:
- **Change output location**: Edit the `$csvPath` variable
- **Add additional fields**: Include more WMI/CIM queries
- **Filter network adapters**: Modify adapter selection criteria
- **Include multiple drives**: Expand disk information collection
- **Add timestamps**: Include collection date/time information

---

## 🔒 Security Notes

- The script only reads system information and doesn't modify anything
- No sensitive data like passwords or user information is collected
- MAC addresses are included for network identification purposes
- Review the script before running in sensitive environments

## 🤝 Contributing

Feel free to submit issues, fork the repository, and create pull requests for improvements.

## 📘 License

This project is open source. Please check the repository for specific license terms.
