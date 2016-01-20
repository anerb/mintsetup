# mintsetup
1. Make a liveCD usb stick
2. Install with root partition at 16384 MB with a second partition of equal size
3. make another partition labeled static with 20GB


To backup
dd if=/dev/sda2 of=/dev/sda4

To restore
start up with liveCD
dd if=/dev/sda4 of=/dev/sda2

