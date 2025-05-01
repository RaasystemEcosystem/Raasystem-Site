#!/bin/bash

# Set the target directory
DOCS_DIR="docs/contracts"
README_FILE="$DOCS_DIR/README.md"

# Header content
cat > "$README_FILE" <<EOF
# Raasystem Smart Contract Documentation

This directory contains documentation for all major smart contracts in the Raasystem Ecosystem.
Each \`.md\` file provides an overview, functionality, and relevant technical details of the associated contract.

---

## 📄 Table of Contents
EOF

# List markdown files excluding .old.md and README.md
find "$DOCS_DIR" -maxdepth 1 -type f -name "*.md" ! -name "*.old.md" ! -name "README.md" | sort | while read -r file; do
  filename=$(basename "$file" .md)
  echo "- [$filename](./$filename.md)" >> "$README_FILE"
done

# Footer
cat >> "$README_FILE" <<EOF

---

> 📝 **Note:** Older versions of each contract are also preserved for historical reference and can be found as \`.old.md\` files.

---

For a full overview of the Raasystem architecture, AI trading engine, and ecosystem components, visit the main [Raasystem GitHub Repository](https://github.com/RaasystemEcosystem/Raasystem-Site).
EOF
