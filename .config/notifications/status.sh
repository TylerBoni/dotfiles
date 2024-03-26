# time_now=$(date +"%H:%M") # Current time
# current time in 12 hour format
time_now=$(date +"%I:%M %p") # Current time
capacity=$(cat /sys/class/power_supply/BAT0/capacity)% # Battery capacity
bat_status=$(cat /sys/class/power_supply/BAT0/status) # Battery status
# pretty formatting of the notification
#
capacity=$capacity\ $bat_status
notify-send -t 2000 "$time_now" "$capacity"


