# to change location saving screenshot picture

DEST=~/screenshot
mkdir -p $DEST
defaults write com.apple.screencapture location $DEST
killall SystemUIServer
