#!/bin/zsh

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
AGENT_SOURCE="${HOME}/norflow/agent/com.shell.Norflow.plist"
AGENT_TARGET="${LIB_AGENTS}/com.shell.Norflow.plist"

# Ensure the LaunchAgents directory exists
if [[ ! -d "$LIB_AGENTS" ]]; then
  mkdir -p "${LIB_AGENTS}" || { echo "Failed to create LaunchAgents directory." >&2; exit 1; }
fi

# Create or update the symbolic link for the agent
if ln -sf "${AGENT_SOURCE}" "${AGENT_TARGET}"; then
  echo "Symbolic link created/updated for Norflow agent."
else
  echo "Error: Failed to create symbolic link for Norflow agent." >&2
  exit 1
fi

# Load the agent if the source exists
if [[ -f "$AGENT_SOURCE" ]]; then
  if launchctl load "${AGENT_TARGET}"; then
    echo "Norflow agent loaded successfully."
  else
    echo "Error: Failed to load the Norflow agent." >&2
    exit 1
  fi
else
  echo "Error: Norflow agent source plist file not found." >&2
  exit 1
fi
