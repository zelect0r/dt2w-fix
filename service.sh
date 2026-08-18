
#!/system/bin/sh

for i in $(seq 1 30); do
    if [ -e /proc/touchpanel/double_tap_enable ]; then
        break
    fi
    sleep 1
done

sleep 2

if [ -e /proc/touchpanel/double_tap_enable ]; then
    echo 1 > /proc/touchpanel/double_tap_enable
fi
