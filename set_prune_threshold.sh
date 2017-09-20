#!/bin/bash
logger "Setting Account Prune System Threshold to $1 days"
defaults write /Library/MICA/edu.mica.deploy.plist DaysBeforeAccountPurge -integer "$1"