current_brightness=$(cat /sys/class/backlight/intel_backlight/brightness)
max_brightness=$(cat /sys/class/backlight/intel_backlight/max_brightness)
brightness_percent=$((current_brightness * 100 / max_brightness))%

notify-send -h string:x-dunst-stack-tag:brightness -t 2000 "Brightness" "$brightness_percent" 
