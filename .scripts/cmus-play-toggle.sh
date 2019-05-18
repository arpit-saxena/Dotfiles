#!/bin/bash

if ! pgrep -x cmus ; then
	gnome-terminal -- screen -S cmus -s cmus
elif [ "$(cmus-remote --query | head -1 | awk '{print $2}')" == "playing" ] ; then
	cmus-remote --pause
else
	cmus-remote --play
fi;
