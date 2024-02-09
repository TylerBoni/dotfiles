# The mouse will warp to a point within the newly focused
        # window.  
        i3-msg -t subscribe -m '[ "window" ]' | while read
        do
            # shellcheck disable=2046
            eval $(xdotool getwindowfocus getwindowgeometry --shell)
            xdotool mousemove $((X + WIDTH / 3)) $((Y + HEIGHT / 3))
        done
