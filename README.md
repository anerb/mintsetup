# mintsetup
1. Make a liveCD usb stick
2. Install with root partition at 16384 MB with a second partition of equal size


To backup
dd if=/dev/sda2 of=/dev/sda4

To restore
start up with liveCD
dd if=/dev/sda4 of=/dev/sda2

