#--------------- Dock --------------#
# Dock を自動的に隠す
defaults write com.apple.dock autohide -bool true

# Finderとゴミ箱以外消す
defaults write com.apple.dock persistent-apps -array

# 拡大機能をON
defaults write com.apple.dock magnification -bool true


#--------------- Hot coners --------------#
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# 右下をスリープ
defaults write com.apple.dock wvous-br-corner -int 10
defaults write com.apple.dock wvous-br-modifier -int 0

# 右上をMission Control
defaults write com.apple.dock wvous-tr-corner -int 2
defaults write com.apple.dock wvous-tr-modifier -int 0

# 左上をDesktop
defaults write com.apple.dock wvous-tl-corner -int 4
defaults write com.apple.dock wvous-tl-modifier -int 0

#-------- other settings -----------#
# ネットワークディスクで、`.DS_Store` ファイルを作らない）
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# 印刷が終了したら、自動的にプリンターアプリを終了する
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# 未確認のアプリケーションを実行する際のダイアログを無効にする
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Save screenshots as PNGs （スクリーンショット保存形式をPNGにする）
defaults write com.apple.screencapture type -string "png"

# Hide the Time Machine and Volume icons from the menu bar （メニューバーのTime Machine と音量アイコンを非表示にする）
for domain in ~/Library/Preferences/ByHost/com.apple.systemuiserver.*; do
    sudo defaults write "${domain}" dontAutoLoad -array \
        "/System/Library/CoreServices/Menu Extras/TimeMachine.menu" \
        "/System/Library/CoreServices/Menu Extras/Volume.menu"
done

# キーリピートの高速化
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# タップしたときに、クリックとする
defaults write -g com.apple.mouse.tapBehavior -int 1
# マウスの速度を速める
defaults write -g com.apple.trackpad.scaling 5
