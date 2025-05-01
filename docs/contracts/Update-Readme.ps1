# Define contract documentation path
$docPath = "C:\Users\hp\raasystem-site\docs\contracts"

# Start building the README content
$readmeContent = @"
# Raasystem Smart Contract Documentation

This directory contains documentation for all major smart contracts in the Raasystem Ecosystem.
Each `.md` file provides an overview, functionality, and relevant technical details of the associated contract.

---

## 📄 Table of Contents
"@

# Get all *.md files except *.old.md and README.md
$contractFiles = Get-ChildItem -Path $docPath -Filter *.md | Where-Object {
    $_.Name -notlike "*.old.md" -and $_.Name -ne "README.md"
} | Sort-Object Name

# Append each contract to the table of contents
foreach ($file in $contractFiles) {
    $name = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
    $readmeContent += "`n- [$name](./$($file.Name))"
}

# Add note and link footer
$readmeContent += @"

---

> 📝 **Note:** Older versions of each contract are also preserved for historical reference and can be found as `.old.md` files.

---

For a full overview of the Raasystem architecture, AI trading engine, and ecosystem components, visit the main [Raasystem GitHub Repository](https://github.com/RaasystemEcosystem/Raasystem-Site).
"@

# Write the content to README.md
$readmeContent | Set-Content -Path "$docPath\README.md" -Encoding UTF8

Write-Output "README.md updated successfully."
