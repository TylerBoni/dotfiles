xrandr --output HDMI-1-0 --mode 3440x1440 --right-of eDP-1 --primary

# Set background image
nitrogen --set-zoom-fill --head=0 $BG_IMAGE
nitrogen --set-zoom-fill --head=1 $BG_IMAGE

# Store the current workspace number
current_workspace=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).num')
echo "Current workspace: $current_workspace"

# Move all i3 workspaces to the primary monitor
for i in {1..10}; do
    echo "Moving workspace $i to HDMI-1-0"
    i3-msg "workspace $i; move workspace to output HDMI-1-0"
done
# Move workspace 1 to eDP-1
echo "Moving workspace 1 to eDP-1"
i3-msg -t command 'workspace 1; move workspace to output eDP-1'

# Switch back to the original workspace
echo "Switching back to workspace $current_workspace"
i3-msg -t command "workspace $current_workspace;"
 
