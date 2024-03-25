time_now=$(date +"%H:%M") # Current time
capacity=$(cat /sys/class/power_supply/BAT0/capacity)% # Battery capacity
# pretty formatting of the notification
#
text="$time_now $capacity"
notify-send -t 2000 $text 


