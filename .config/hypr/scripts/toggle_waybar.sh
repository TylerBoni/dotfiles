PID=$(pgrep waybar)

if [ -n "$PID" ]; then
    kill $PID
else
    waybar
fi


