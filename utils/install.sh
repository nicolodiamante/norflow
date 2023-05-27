#!/bin/sh

#
# Install Norflow
#

# Detect the OS if darwin then determines the OS version
# (from macOS 12.6.1 Monterey or later).
SW_VERS=$(sw_vers -buildVersion)
OS_VERS=$(sed -E -e 's/([0-9]{2}).*/\1/' <<< "$SW_VERS")
[[ "$OSTYPE" = darwin* && "$OS_VERS" -ge 21 ]] || exit 1

# Defines the PATHs.
LIB_AGENTS="${HOME}/Library/LaunchAgents"
AGENT="${LIB_AGENTS}/com.shell.Norflow.plist"

if [[ ! -d "$LIB_AGENTS" ]]; then
 mkdir -p "${LIB_AGENTS}"
fi

cp -r ./agent/com.shell.Norflow.plist "${LIB_AGENTS}"

if [[ -f "${AGENT}" ]]; then
  osascript -e '
  tell application "Terminal"

    set textToTypeOne to "launchctl load ~/Library/LaunchAgents/com.shell.Norflow.plist"

    tell application "System Events"
      (* Load the first job. *)
      keystroke textToTypeOne

      (* Wait a little bit to ensure that the job is loaded. *)
      delay 0.5

      keystroke return

    end tell
  end tell'
fi
