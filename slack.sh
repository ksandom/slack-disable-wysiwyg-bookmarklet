#!/bin/bash
# Enable developer tools so that this can be run in the app https://github.com/ksandom/slack-disable-wysiwyg-bookmarklet

function toClipboard
{
  if command -v pbcopy > /dev/null; then
    pbcopy
  elif command -v xclip > /dev/null; then
    xclip -i -selection c
  else
    echo "No clipboard tool found. Here's what you need to paste into the developer console:"
    cat -
  fi
}

curl https://raw.githubusercontent.com/kfahy/slack-disable-wysiwyg-bookmarklet/master/index.js | toClipboard

SLACK_DEVELOPER_MENU=true slack
