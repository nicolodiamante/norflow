#!/bin/zsh

#
# Norflow — Remove the Shortcuts folder if it's empty.
#

shortcuts=~/Library/Mobile\ Documents/iCloud~is~workflow~my~workflows/Documents
if [[ -z "$(ls -A -I ".WorkflowHiddenFile" $shortcut | head -n 5)" ]]; then
  # The folder is empty, then remove it.
  rm -rf $shortcuts
fi
