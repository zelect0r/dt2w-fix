#!/system/bin/sh

resetprop -w sys.boot_completed 0

for i in $(seq 1 60); do
    if [ -w /proc/touchpanel/double_tap_enable ]; then
        break
    fi
    sleep 1
done

sleep 2

if [ -w /proc/touchpanel/double_tap_enable ]; then
    echo 1 > /proc/touchpanel/double_tap_enable
fi
