#!/bin/sh

if [ $(pgrep spt)>'0' ]
then
	sleep 30
  zscroll -l 20 \
        --delay 0.5 \
        --scroll-padding "  " \
        --match-command "spt playback -s" \
        --update-check true "spt playback -s" &

wait
else
	echo ""
fi
