capacity=$(cat /sys/class/power_supply/BAT0/capacity)% # Battery capacity

notify-send "Battery capacity" "$capacity" # Show notification

