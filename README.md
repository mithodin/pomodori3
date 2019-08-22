# pomodori3
pomodoro timer for the i3 window manager

The pomodoro technique is a time management method.
A 25 minute work session is followed by a five minute break.
During the work session, all distractions should be avoided.

To this end, this project implements the following:

 - A "focus" mode for i3 where workspace navigation is disabled.
 - A "break" mode for i3 where all controls are disabled.
 - A shell script (tomato.sh) which does the following:
   - Hide all i3 bars
   - Switch to i3 "focus" mode
   - Set a notification for "focus mode" with a timeout of 25 minutes
   - Wait for 25 minutes
   - Switch to i3 "break" mode
   - Display a progress bar for 5 minutes
   - Show a prompt to start the next session or exit the script
   - If the script is exited, i3 mode is switched back to "default" mode and the bars are re-enabled.
   
This setup should be easy to modify for your needs.

To apply as-is, just run `make install`. This will append the contents of i3.conf to `~/.config/i3/config` and copy tomato.sh to `~/.config/i3/`.

This project needs
 - [zsh](https://www.zsh.org/)
 - [i3](https://www.zsh.org/)
 - [zenity](http://live.gnome.org/Zenity)

to work properly.
