#!/bin/bash
# ==============================================================================
# Script Name: 001_preflight_check.sh
# Description: Production boilerplate featuring strict mode and system identity checks.
# Author: Rushikesh
# ==============================================================================

set -e
set -u
set -o pipefail

readonly SCRIPT_NAME=$(basename "$0")
readonly CURRENT_USER=$(whoami)
readonly TARGET_ENV="Production"

echo "=========================================="
echo "Starting Script: $SCRIPT_NAME"
echo "Executed by:     $CURRENT_USER"
echo "Environment:     $TARGET_ENV"
echo "Timestamp:       $(date '+%Y-%m-%d %H:%M:%S')"
echo "=========================================="

if [ "$CURRENT_USER" = "root" ]; then
    echo "[WARNING] Running as root. Exercise caution in production!"
else
    echo "[INFO] Running as standard user: $CURRENT_USER"
fi

echo "Pre-flight check completed successfully."
