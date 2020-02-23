#!/bin/bash
## Edit hostname for mac
NEW_HOSTNAME=ishibashi_genki

scutil --get ComputerName
scutil --get LocalHostName
scutil --get HostName
scutil --set ComputerName $YOUR_NAME
scutil --set LocalHostName $YOUR_NAME
scutil --set HostName $YOUR_NAME
scutil --get HostName
scutil --get LocalHostName
scutil --get HostName
