#!/bin/sh

#
# Uninstall Norflow
#

# Define paths
LIB_AGENTS="${HOME}/Library/LaunchAgents"
AGENT="${LIB_AGENTS}/com.shell.Norflow.plist"

# Unload the agent if it exists
if [[ -f "${AGENT}" ]]; then
  launchctl unload "${AGENT}"
fi

# Remove the agent file
rm -f "${AGENT}"
