#!/bin/zsh

#
# Norflow — Remove the Shortcuts folder in iCloud Drive.
#

SHORTCUTS="${HOME}/Library/Mobile Documents/iCloud~is~workflow~my~workflows/Documents"

# Check if the SHORTCUTS directory exists
if [[ -d "$SHORTCUTS" ]]; then
  # Count the number of files excluding .WorkflowHiddenFile
  file_count=$(ls -A "${SHORTCUTS}" | grep -v "^\.WorkflowHiddenFile$" | wc -l)

  if [[ $file_count -eq 0 ]]; then
    # The folder contains only .WorkflowHiddenFile or is empty, then remove it.
    rm -rf "${SHORTCUTS}"
  fi
fi
