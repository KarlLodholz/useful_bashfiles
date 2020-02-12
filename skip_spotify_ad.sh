#!/bin/bash
killall spotify

#this is the first sleep.  Alter this one for 'alt'+'tab'ing back to what you were working on
spotify & sleep .7

#this is the alt tab sleep.  I don't believe you will need to change this one
xdotool keydown alt key Tab; sleep .02; xdotool keyup alt;

#alter this sleep for how long spotify takes to fully open and accept commands like play and pause
sleep 3
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause
