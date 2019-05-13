#!/bin/sh

ps cax | grep sdkms > /dev/null
if [ $? -eq 0 ]; then
  echo "Process is running."
  pgrep sdkms
else
  echo "Process is not running." 
  timeout 10s ps cax | grep sdkms > /dev/null 
fi
