#####################################
##	mohammed_a_hewedy@hotmail.com  ##
#	Hack to keep PopClip Trail Forever :) --- uninstall.sh
#####################################

# Register the file as launchctl job
launchctl unload ~/Library/LaunchAgents/com.daziplqa.ClipPop.plist
rm -rf ~/bin/ClipPop.sh
rm -rf ~/Library/LaunchAgents/com.daziplqa.ClipPop.plist
