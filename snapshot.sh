#!/bin/bash
# by Robin Alexander Studt (2024)

read -p "Enter a comment for the snapshot: " c
sudo timeshift --create --comments "$c"
sudo timeshift --list
sudo grub-mkconfig -o /boot/grub/grub.cfg
echo "DONE! Snapshot $c created."