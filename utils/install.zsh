#!/bin/zsh

#
# Install Norflow.
#

# Validate OS.
if [[ "$OSTYPE" != "darwin"* ]]; then
  echo "This script is only compatible with macOS" >&2
  exit 1
fi

# Validate macOS version.
SW_VERS=$(sw_vers -buildVersion)
OS_VERS=$(sed -E -e 's/^([0-9]{2}).*/\1/' <<<"$SW_VERS")
if [[ "$OS_VERS" -lt 21 ]]; then
  echo "Error: Norflow requires macOS 12.6.1 Monterey or later." >&2
  exit 1
fi

# Define the PATHs.
LIB_AGENTS="${HOME}/Library/LaunchAgents"
AGENT_SOURCE="${HOME}/norflow/agent/com.shell.Norflow.plist"
AGENT_TARGET="${LIB_AGENTS}/com.shell.Norflow.plist"

# Ensure the LaunchAgents directory exists.
if ! [[ -d "$LIB_AGENTS" ]]; then
  echo "Creating LaunchAgents directory..."
  if ! mkdir -p "${LIB_AGENTS}"; then
    echo "Failed to create LaunchAgents directory." >&2
    exit 1
  fi
fi

# Create or update the symbolic link for the agent.
if ln -sf "${AGENT_SOURCE}" "${AGENT_TARGET}"; then
  echo "Symbolic link created/updated for Norflow agent."
else
  echo "Error: Failed to create symbolic link for Norflow agent." >&2
  exit 1
fi

# Check if launchctl is available
if ! command -v launchctl &> /dev/null; then
  echo "Error: launchctl command not found." >&2
  exit 1
fi

# Unload the agent if it is already loaded.
if launchctl list | grep -q "com.shell.Norflow"; then
  if ! launchctl unload "${AGENT_TARGET}"; then
    echo "Warning: Failed to unload the existing Norflow agent." >&2
  fi
fi

# Load the agent if the source exists.
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
