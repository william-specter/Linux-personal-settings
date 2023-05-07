#!/usr/bin/bash

# comprovam si és obert
if [[ $(pgrep "mpv") ]] ; then
	killall mpv
	exit 0
fi

# resolució
# llistar amb v4l2-ctl --list-formats-ext (v4l-utils)
#v4l2-ctl --set-fmt-video=width=640,height=480,pixelformat=YUYV

# webcam
mpv /dev/video0 -autofit=27% --geometry=-0-0 --demuxer-lavf-format=video4linux2
