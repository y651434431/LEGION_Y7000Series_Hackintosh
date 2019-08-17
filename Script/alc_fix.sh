#!/bin/sh
#Script auto fix alc236 for id=18
#Version 1.0: Jul 17, 2019
#OSX: 10.13.6 and above

echo "This script required to run as root"

sudo curl -o "/tmp/ALCPlugFix" "https://raw.githubusercontent.com/xiaoMGithub/Lenovo_Y7000-Y530_Hackintosh/master/ALCPlugFix/ALCPlugFix"
sudo curl -o "/tmp/hda-verb" "https://raw.githubusercontent.com/xiaoMGithub/Lenovo_Y7000-Y530_Hackintosh/master/ALCPlugFix/hda-verb"
sudo curl -o "/tmp/good.win.ALCPlugFix.plist" "https://raw.githubusercontent.com/xiaoMGithub/Lenovo_Y7000-Y530_Hackintosh/master/ALCPlugFix/good.win.ALCPlugFix.plist"

echo "Downloading required file"

# exit if error
if [ "$?" != "0" ]; then
echo "Error: Download failure, verify network"
exit 1
fi

echo "Copy file to destination place..."

sudo cp -a "/tmp/ALCPlugFix" /usr/bin
sudo cp -a "/tmp/hda-verb" /usr/bin
sudo cp -a "/tmp/good.win.ALCPlugFix.plist" /Library/LaunchAgents/
sudo rm /tmp/ALCPlugFix
sudo rm /tmp/hda-verb
sudo rm /tmp/good.win.ALCPlugFix.plist

echo "Chmod ALCPlugFix..."
sudo chmod 755 /usr/bin/ALCPlugFix
sudo chown root:wheel /usr/bin/ALCPlugFix
sudo chmod 755 /usr/bin/hda-verb
sudo chown root:wheel /usr/bin/hda-verb
sudo chmod 644 /Library/LaunchAgents/good.win.ALCPlugFix.plist
sudo chown root:wheel /Library/LaunchAgents/good.win.ALCPlugFix.plist

echo "Load ALCPlugFix..."
sudo launchctl load /Library/LaunchAgents/good.win.ALCPlugFix.plist

echo "Done!"
