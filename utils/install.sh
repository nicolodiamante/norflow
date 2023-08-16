#!/bin/sh

#
# Install Norflow
#

# Validate OS and version
if [[ "$OSTYPE" != darwin* ]]; then
  echo "This script is only compatible with macOS."
  exit 1
fi

SW_VERS=$(sw_vers -buildVersion)
OS_VERS=$(sed -E -e 's/([0-9]{2}).*/\1/' <<<"$SW_VERS")
if [[ "$OS_VERS" -lt 21 ]]; then
  echo "Norflow requires macOS 12.6.1 Monterey or later."
  exit 1
fi

# Define paths
LIB_AGENTS="${HOME}/Library/LaunchAgents"
AGENT="${LIB_AGENTS}/com.shell.Norflow.plist"

# Create necessary directories
mkdir -p "$LIB_AGENTS"

# Install Norflow agent
install -m 0644 ./agent/com.shell.Norflow.plist "$LIB_AGENTS"

# Load the agent if it exists
if [[ -f "${AGENT}" ]]; then
  launchctl load "${AGENT}"
fi
