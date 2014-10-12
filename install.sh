#####################################
##	mohammed_a_hewedy@hotmail.com  ##
#
#	Hack to keep PopClip Trail Forever :) --- install.sh
#####################################

# create a script for resting the PopClip trail to 255
mkdir -p ~/bin

cat << EOF > ~/bin/ClipPop.sh
#! /bin/bash
defaults write com.pilotmoon.popclip TrialData '<62706c69 73743030 d4010203 04050619 1a582476 65727369 6f6e5824 6f626a65 63747359 24617263 68697665 72542474 6f701200 0186a0a5 07081112 1355246e 756c6cd3 090a0b0c 0e10574e 532e6b65 79735a4e 532e6f62 6a656374 73562463 6c617373 a10d8002 a10f8003 80045475 73657310 ffd21415 16175a24 636c6173 736e616d 65582463 6c617373 65735c4e 53446963 74696f6e 617279a2 1618584e 534f626a 6563745f 100f4e53 4b657965 64417263 68697665 72d11b1c 54726f6f 74800108 111a232d 32373d43 4a525d64 66686a6c 6e73757a 858e9b9e a7b9bcc1 00000000 00000101 00000000 0000001d 00000000 00000000 00000000 000000c3>'

EOF

chmod +x ~/bin/ClipPop.sh

#create the Launchd script
mkdir -p ~/Library/LaunchAgents

cat << EOF > ~/Library/LaunchAgents/com.daziplqa.ClipPop.plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
   <key>Label</key>
   <string>com.daziplqa.ClipPop</string>
   <key>Program</key>
   <string>$HOME/bin/ClipPop.sh</string>
   <key>RunAtLoad</key>
   <true/>
</dict>
</plist>
EOF

# Register the file as launchctl job
launchctl load ~/Library/LaunchAgents/com.daziplqa.ClipPop.plist
