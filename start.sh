#!/bin/bash
set -e

BASE="/mnt/server"
cd "${BASE}"

GAME_BINARY="./Crab Game.x86_64"

# Check the file exists
if [ ! -f "${GAME_BINARY}" ]; then
    echo "[!] ${GAME_BINARY} not found in ${BASE}"
    echo "    Contents of ${BASE}:"
    ls -R "${BASE}"
    exit 1
fi

# Make sure it’s executable
chmod +x "${GAME_BINARY}"

echo "[-] Starting Crab Game.x86_64..."

# If you want to pass args (like port, batchmode, etc.), add them here:
# Example with some common Unity headless flags:
exec "${GAME_BINARY}" -batchmode -nographics
