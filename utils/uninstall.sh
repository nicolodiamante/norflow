#!/bin/zsh

#
# Uninstall Norflow
#

# Defines the PATHs.
LIB_AGENTS="${HOME}/Library/LaunchAgents"
AGENT="${LIB_AGENTS}/com.shell.Norflow.plist"

# Check if the file exists and is a symlink before attempting to remove.
if [[ -L "${AGENT}" ]]; then
  echo "Removing the agent symlink..."
  # Unload the agent if it was loaded.
  agent_name=$(basename "${AGENT}" .plist)
  if launchctl list | grep -q "${agent_name}"; then
    echo "Unloading the agent..."
    if ! launchctl unload "${AGENT}" 2>/dev/null; then
      echo "Failed to unload the agent." >&2
      exit 1
    else
      echo "Agent unloaded successfully."
    fi
  fi

  # Remove the symlink.
  if ! rm -f "${AGENT}"; then
    echo "Failed to remove the agent symlink." >&2
    exit 1
  else
    echo "Successfully removed the agent symlink."
  fi
elif [[ -f "${AGENT}" ]]; then
  echo "The agent file exists but is not a symlink. Manual removal required." >&2
  exit 1
else
  echo "The agent file does not exist. No removal necessary."
fi
