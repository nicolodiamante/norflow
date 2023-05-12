#!/bin/sh

#
# Uninstall Norflow
#

# Defines the PATHs.
LIB_AGENTS="${HOME}/Library/LaunchAgents"
AGENT="${LIB_AGENTS}/com.shell.Norflow.plist"

if [[ -f "${AGENT}" ]]; then
  osascript -e '
  tell application "Terminal"

    set textToTypeOne to "launchctl unload ~/Library/LaunchAgents/com.shell.Norflow.plist"

    tell application "System Events"
      (* Load the first job. *)
      keystroke textToTypeOne

      (* Wait a little bit to ensure that the job is loaded. *)
      delay 0.5

      keystroke return

    end tell
  end tell'
fi && rm "${AGENT}"
