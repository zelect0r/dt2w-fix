# DT2W Fix for OnePlus 8T

A small root module that restores **Double Tap to Wake (DT2W)** on the OnePlus 8T by enabling the touchpanel DT2W interface during boot.

## How it works

The module waits for the touchpanel proc interface to become available:

```text
/proc/touchpanel/double_tap_enable
```

Once available, it writes `1` to the interface to enable Double Tap to Wake.

The module waits for up to 30 seconds after boot and then performs one final check.

## Requirements

- OnePlus 8T
- Root access
- A kernel exposing `/proc/touchpanel/double_tap_enable`
- Magisk, APatch, KernelSU, or another compatible root module system

## Installation

Install the module using your preferred root module manager and reboot the device.

After reboot, Double Tap to Wake should be enabled.

## Compatibility

This module was developed and tested on the OnePlus 8T.

It may work on other OnePlus/Oplus devices using a compatible touchpanel interface, but this is not guaranteed.

## Support

If you find ZAMR useful and would like to support its development and maintenance, you can support me on Ko-fi.

[☕ Support zelect0r/dt2w on Ko-fi](https://ko-fi.com/zelect0r)

Your support helps me continue developing and maintaining ZAMR. Thank you! ❤️

## Limitations

The module only enables the touchpanel interface. It does not modify the kernel, framework, SystemUI, or Android settings.

If `/proc/touchpanel/double_tap_enable` does not exist on a device, the module does nothing.

## Uninstallation

Disable or remove the module using your root module manager and reboot.

## License

Copyright (C) 2026 zelect0r

Licensed under the GNU General Public License v3.0 or later.
