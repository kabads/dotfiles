xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
#XTerm*background: black
#XTerm*foreground: white
#/usr/bin/owncloud & 
#/home/adam/.dropbox-dist/dropboxd & 
#feh --bg-scale /home/adam/Dropbox/wallpaper/askwallpapers.com-53470.jpg & 
#skype & 
#/usr/bin/offlineimap &
#/home/adam/bin/stats.sh & 
#/usr/bin/podget & 
synclient TouchpadOff=0 & 
#exec /usr/bin/ratpoison 
#exec openbox-session
#exec tdm --start
#exec i3
#/usr/bin/offlineimap > /dev/null 2>&1 
#exec i3
#exec fvwm  
setxkbmap dvorak
#/usr/bin/xscreensaver -nosplash & 
#exec dwm
#exec gnome-session
#/home/adam/wallpaper.sh
#feh --bg-scale /home/adam/bern.jpg &
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


# time bar in status bar

status () { 
  echo -n "BAT: $(acpi | awk '{print $4}' | sed s/,//) | $(date '+%Y-%m-%d %H:%M:%S')"
    }

# loop
# while true; do
#   dwm >/dev/null 2>&1
# done

while :; do
  xsetroot -name "$(status)"
  sleep 1
done & 


dwmstatus 2>&1 >/dev/null &« to your .xinitrc
# exec startxfce4
exec dwm & wmpid=$!


wait $wmpid
