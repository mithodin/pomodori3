#!/bin/zsh
focus_time=25 #in minutes
rest_time=5 #in minutes
rest_steps=100
contin=1

i3-msg bar mode invisible

while [ $contin -eq 1 ];
do
	i3-msg mode "focus"
	notify-send -t $( echo $(( 60000*$focus_time )) | sed 's/\..*//g' ) -u low "focus mode active"
	sleep $(( 60*$focus_time ))
	i3-msg mode "break"
	( for i in $(seq $rest_steps); do echo $(( 100*($i-1)/$rest_steps )); sleep $(( 60*$rest_time/$rest_steps )); done ) | zenity --text "take a $rest_time minute break" --progress --auto-close
	contin=$( zenity --question --text "Break is over. Start new focus session?" && echo "1" || echo "0" )
done

i3-msg mode "default"
i3-msg bar mode dock
