#!/bin/zsh

#
# Uninstall Norflow
#

# Define paths
LIB_AGENTS="${HOME}/Library/LaunchAgents"
AGENT="${LIB_AGENTS}/com.shell.Norflow.plist"

# Check if the file exists and is a symlink before attempting to remove.
if [[ -L "${AGENT}" ]]; then
  # Unload the agent if it was loaded.
  if launchctl list | grep -q "$(basename "${AGENT}" .plist)"; then
    launchctl unload "${AGENT}" 2>/dev/null && echo "Agent unloaded successfully." || { echo "Failed to unload the agent."; exit 1; }
  fi

  # Remove the symlink.
  if rm -f "${AGENT}"; then
    echo "Successfully removed the agent symlink."
  else
    echo "Failed to remove the agent symlink." >&2
    exit 1
  fi
elif [[ -f "${AGENT}" ]]; then
  echo "The agent file exists but is not a symlink. Manual removal required." >&2
  exit 1
else
  echo "The agent file does not exist. No removal necessary."
fi
