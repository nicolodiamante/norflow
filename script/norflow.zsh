#!/bin/zsh

#
# Norflow — Remove the Shortcuts folder.
#

shortcuts=~/Library/Mobile\ Documents/iCloud~is~workflow~my~workflows/Documents
if [[ -z "$(ls -A -I ".WorkflowHiddenFile" $shortcut | head -n 5)" ]]; then
  # Empty then remove it.
  rm -rf $shortcuts 2>&1
fi
