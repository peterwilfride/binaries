iwconfig wlan0 | grep -i 'link quality'
iwconfig wlan0 | grep -i 'bit rate' | awk '{print $1" "$2}'
