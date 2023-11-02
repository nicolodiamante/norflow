#!/bin/sh

#
# Install Norflow
#

# Validate OS and version
if [[ "$OSTYPE" != "darwin"* ]]; then
  echo "Error: This script is only compatible with macOS."
  exit 1
fi

# Validate macOS version
SW_VERS=$(sw_vers -buildVersion)
OS_VERS=$(sed -E -e 's/([0-9]{2}).*/\1/' <<<"$SW_VERS")
if [[ "$OS_VERS" -lt 21 ]]; then
  echo "Error: Norflow requires macOS 12.6.1 Monterey or later."
  exit 1
fi

# Define paths
LIB_AGENTS="${HOME}/Library/LaunchAgents"
AGENT_SOURCE="./agent/com.shell.Norflow.plist"
AGENT_TARGET="${LIB_AGENTS}/com.shell.Norflow.plist"

# Create necessary directories if they don't exist
[[ ! -d "$LIB_AGENTS" ]] && mkdir -p "$LIB_AGENTS"

# Create or overwrite the symbolic link from the agent directory to LIB_AGENTS
ln -sf "$AGENT_SOURCE" "$AGENT_TARGET"

# Load the agent if the source exists
if [[ -f "${AGENT_SOURCE}" ]]; then
  launchctl load "${AGENT_TARGET}"
else
  echo "Error: Norflow agent source plist file not found."
  exit 1
fi
