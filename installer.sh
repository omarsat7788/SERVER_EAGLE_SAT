#!/bin/sh

# ------------------------------
# ⚙ SERVER_EAGLE_SAT Plugin Installer (Updated)
# ------------------------------

PLUGIN_NAME="SERVER_EAGLE_SAT"
PLUGIN_VERSION="1.0"

clear
echo ""
echo "┌────────────────────────────────────────────────────┐"
echo "│     ⚙ SERVER_EAGLE_SAT Plugin Installer ⚙            │"
echo "├────────────────────────────────────────────────────┤"
echo "│ This script will install the 
        SERVER_EAGLE_SAT plugin     │"
echo "│ on your Enigma2-based receiver.                    │"
echo "│                                                    │"
echo "│ Version   : 1.0                                │"
echo "│ Developer : OMARSAT                           │"
echo "└────────────────────────────────────────────────────┘"
echo ""

# === Configuration ===
ZIP_PATH="/tmp/SERVER_EAGLE_SAT.zip"
EXTRACT_DIR="/tmp/SERVER_EAGLE_SAT"
INSTALL_DIR="/usr/lib/enigma2/python/Plugins/Extensions"

PLUGIN_URL="https://raw.githubusercontent.com/omarsat7788/SERVER_EAGLE_SAT/main/SERVER_EAGLE_SAT.zip"

# === Step 1: Download ===
echo "[1/4] 🔽 Downloading plugin package from:"
echo "    https://raw.githubusercontent.com/omarsat7788/SERVER_EAGLE_SAT/main/SERVER_EAGLE_SAT.zip"
cd /tmp || { echo "❌ Cannot change directory to /tmp. Aborting."; exit 1; }
wget "$PLUGIN_URL" -O "$ZIP_PATH"
if [ $? -ne 0 ]; then
    echo "❌ Failed to download the plugin. Please check your connection or URL."
    exit 1
fi

# === Step 2: Extract & Install ===
echo "[2/4] 📦 Extracting files and installing..."
unzip -o "$ZIP_PATH" -d "$EXTRACT_DIR" >/dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "❌ Extraction failed. The ZIP file may be corrupted."
    exit 1
fi

rm -rf "$INSTALL_DIR/SERVER_EAGLE_SAT"
cp -r "$EXTRACT_DIR/SERVER_EAGLE_SAT" "$INSTALL_DIR"
if [ [ $? -ne 0 ]; then
    echo "❌ Failed to copy plugin to Enigma2 plugins directory."
    exit 1
fi

# === Step 3: Cleanup ===
echo "[3/4] 🧹 Cleaning up..."
rm -rf "$EXTRACT_DIR"
rm -f "$ZIP_PATH"

# === Step 4: Final Message ===
echo "[4/4] ✅ Installation complete!"
echo ""
echo "🎉 The plugin \"SERVER_EAGLE_SAT\" (v1.0) has been installed successfully."

# === Subscription info ===
echo ""
echo "📞 للإشتراك المرجو التواصل معنا عبر الواتس آب أو رقم الهاتف:"
echo "    +2001011058982"
echo ""

exit 0
