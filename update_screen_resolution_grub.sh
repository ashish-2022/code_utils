#!/bin/sh
# Update GRUB entry for resolution on CentOS

# su root
grubby --update-kernel=ALL --args="video=hyperv_fb:1920x1080"
# reboot
