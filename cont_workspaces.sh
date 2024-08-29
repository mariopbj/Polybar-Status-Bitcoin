#!/bin/bash

current=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).num')
total=$(i3-msg -t get_workspaces | jq 'length')

echo "$current / $total"
