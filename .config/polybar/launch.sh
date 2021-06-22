!#/bin/sh

# Terminate already running bar instance
killall -q polybar

# wait until processes have been shut down 
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch Polybar, using default location: ~/.config/polybar/config

polybar mybar &
echo "Polybar Launched..."
