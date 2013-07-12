#!/bin/bash
# Toggle ThinkPad T410 DisplayPort output

xrandr -q |grep 'HDMI1 connected [0-9]' &>/dev/null
display_status="$?"

if [ $display_status -eq "0" ]
then
  xrandr --output HDMI1 --off
else
  xrandr --output HDMI1 --auto --above LVDS1
fi
