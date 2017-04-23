#!/usr/bin/env bash
# check HDMI connection
rm -f /home/pi/display_loader/name_of_hdmi
tvservice -n 2>/home/pi/display_loader/name_of_hdmi
HDMI_NAME=`cat /home/pi/display_loader/name_of_hdmi`
if [ "$HDMI_NAME" == "[E] No device present" ]; then
  # HDMI !connected
  LCD_ON=`cat /boot/config.txt | grep "ignore_lcd=1"`
  if [ "$LCD_ON" == "ignore_lcd=1" ]; then
    # reboot because LCD needs a specific configuration
    echo "reboot with LCD"
    sudo cp -rf /home/pi/display_loader/99-fbturbo-LCD.conf /usr/share/X11/xorg.conf.d/99-fbturbo.conf
    sudo cp -rf /home/pi/display_loader/config-LCD.txt /boot/config.txt
    sudo reboot -n
  fi
else
  # HDMI connected
  HDMI_ON=`cat /boot/config.txt | grep "ignore_lcd=0"`
  if [ "$HDMI_ON" == "ignore_lcd=0" ]; then
    # rebbot beacuse HDMI needs a specific configuration
    echo "reboot with HDMI"
    sudo cp -rf /home/pi/display_loader/99-fbturbo-HDMI.conf /usr/share/X11/xorg.conf.d/99-fbturbo.conf
    sudo cp -rf /home/pi/display_loader/config-HDMI.txt /boot/config.txt
    sudo reboot -n
  fi
fi
