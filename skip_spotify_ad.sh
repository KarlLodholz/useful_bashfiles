#!/bin/bash
killall spotify
spotify & sleep .7
xdotool keydown alt key Tab; sleep .02; xdotool keyup alt;
sleep 3
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause
