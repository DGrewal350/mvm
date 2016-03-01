#!/bin/zsh
# helper for mvm

function mvp ()
{
	mkdir -p $3:h
	mv $2 $3
}

autoload -U zmv
zmv -p mvp '(**/)(*).(S|s|)([0-9]|[0-9][0-9])(E|e|)([0-9][0-9])(.*|).(mp4|mpv)' ~/Movies/'${(C)2//./ }'/Season\ '$((10#${4}))'/'${(C)2}.S0$((10#${4}))E$6.$8'

exit