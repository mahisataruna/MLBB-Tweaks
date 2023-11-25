# !/bin/sh
# ========================================================================

# Mobile Legends Bang Bang All Tweaks for Smartphone [root] and [non-root]
# Name      : MLBB Tweaks Performance
# Author    : Algorithm Dev / Kreapic (t.me/algorithmdev)
# Version   : 1.0-Beta

# ========================================================================

# Add [device_cogfig] configuration mode
sleep 2
device_config get game_overlay com.mobile.legends
echo " 🕗 : Checking Game Intervension            [OK] "
echo " "

# Set device_config to 60FPS
# device_config put game_overlay <PACKAGE_NAME>
# mode=2,downscaleFactor=0.9:mode=3,downscaleFactor=0.5
# source : https://developer.android.com/games/gamemode/gamemode-interventions
device_config put game_overlay com.mobile.legends mode=2,opengles=1,downscaleFactor=0.75,fps=60:mode=3,opengles=0,downscaleFactor=0.75,fps=60
echo " 🕗 : Throttling FPS Setting                [OK] "
sleep 1
echo " "
# https://developer.android.com/games/gamemode/gamemode-interventions#fps_throttling
echo " 🕗 : Configuration....                [SUCCESS] "
sleep 1
exit