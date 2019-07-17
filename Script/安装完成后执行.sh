#!/bin/bash
echo "开始执行"
sudo spctl --master-disable
sudo pmset -a hibernatemode 0
sudo rm /var/vm/sleepimage
sudo mkdir /var/vm/sleepimage
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/xiaoMGithub/LocalTime-Toggle/master/fix_time_osx.sh)"
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/xiaoMGithub/Lenovo_Y7000-Y530_Hackintosh/master/Script/alc_fix.sh)"
echo "执行完成，请重启"
exit 0
