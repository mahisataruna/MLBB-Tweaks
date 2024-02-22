# !/bin/sh
# ========================================================================

# Mobile Legends Bang Bang All Tweaks for Smartphone [root] and [non-root]
# Name      : MLBB Tweaks Performance
# Author    : Algorithm Dev / Kreapic (t.me/algorithmdev)
# Version   : 1.0.6.1-Beta

# ========================================================================

# Uninstall Mesaage

sleep 0.5

echo "▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
echo " "
echo "         Mobile Legends Bang-Bang Tweaks Uninstaller           "
echo " "
sleep 0.5
echo "                       Please wait..                           "
echo " "
# Uninstaller
sleep 5
# Enable performance tunning
# Disable performance mode  : 0
# Enable performance mode   : 1

setprop debug.egl.hw 0
setprop debug.performance.tunning 0
cmd power set-fixed-performance-mode-enabled false
echo " 🕗 : Disable Performance Mode              [SUCCESS] "

sleep 2

# CHANGE GPU GOVERNOR 
# SETUP GOVERNOR CPU TO msm-adreno-tz
# GPU Mode : /sys/kernel/gpu/gpu_governor
#   Available Mode : msm-adreno-tz | powersave | performance

echo msm-adreno-tz > /sys/kernel/gpu/gpu_governor
echo " 🕗 : Return GPU governor                   [SUCCESS] "

sleep 2
# Enable GPU Throttling
echo 1 > /sys/class/kgsl/kgsl-3d0/throttling
echo " 🕗 : Enable GPU Throttling                 [SUCCESS] "

sleep 2
# Enable Thermalservice
cmd thermalservice override-status 1
echo " 🕗 : Enable Thermalservice                 [SUCCESS] "

sleep 2

echo " "
echo "                    Uninstalling Success                      "
sleep 0.5
echo "              Thank you for using MLBB Tweaks!                "
sleep 0.5
echo "  📲 Check our more module & tweaks : t.me/algorithmdev       "
sleep 0.5
echo " "
echo "                    REBOOT YOUR PHONE!                        "
echo " "
sleep 2
echo "▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
echo " "