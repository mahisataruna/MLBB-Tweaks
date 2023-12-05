# !/bin/sh
# ========================================================================

# Mobile Legends Bang Bang All Tweaks for Smartphone [root] and [non-root]
# Name      : MLBB Tweaks Performance
# Author    : Algorithm Dev / Kreapic (t.me/algorithmdev)
# Version   : 1.0.2-Beta

# ========================================================================

# Installation message
sleep 0.5

echo "▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
echo " "
echo "              Mobile Legends Bang-Bang Tweaks                  "
echo " "
sleep 0.5
echo "                 Telegram : @algorithmdev                      "
echo " "
sleep 0.5
echo "                     Version 1.0.2-Beta                          "
echo " "
sleep 0.5
echo " "
echo "▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
echo " "
sleep 1
echo "    Note : Jangan close terminal selama proses installasi!     "
echo " "
sleep 0.5
echo "                 ▒▒▒▒ INSTALLATION STARTS ▒▒▒▒                 "
echo " "
# Installation Start
sleep 2
# Setup performance tunning
# Disable performance mode  : 0
# Enable performance mode   : 1

setprop debug.performance.tunning 1
setprop debug.egl.hw 1
setprop debug.egl.profiler 0
echo " 🕗 : Setup Performance Mode              [OK] "
sleep 2
# Enable Hardware Rendering     : 1
# Disable Hardware Rendering    : 0

setprop debug.sf.hw 1
setprop hw3d.force 1
echo " 🕗 : Enable Hardware Rendering           [OK] "
sleep 2

# CHANGE GPU GOVERNOR 
# SETUP GOVERNOR CPU TO PERFORMANCE
# GPU Mode : /sys/kernel/gpu/gpu_governor
#   Available Mode : msm-adreno-tz | powersave | performance

echo performance > /sys/kernel/gpu/gpu_governor
echo " 🕗 : Setup GPU governor to Performance   [OK] "
sleep 2

# Disable Thermalservice
cmd thermalservice override-status 0
echo " 🕗 : Disable Thermalservice              [OK] "
sleep 2

# Disable GPU Throttling/Thermal 

echo 0 > /sys/class/kgsl/kgsl-3d0/throttling
echo 1 > /sys/class/kgsl/kgsl-30/force_clk_on
echo " 🕗 : Disable GPU Throttling              [OK] "

# End Installation
sleep 2
# Change GPU Performance
setprop debug.compotition.type gpu
setprop debug.compotition.type c2d
setprop debug.hwui.renderer skiagl
setprop debug.gr.swapinterval 90
setprop debug.gr.numframebuffers 3
setprop debug.egl.buffcount 4
echo " 🕗 : Enable GPU Turbo Performance        [OK] "

sleep 2
# Change disable vsync cpu and gpu
# value 1   : Enable
# value 0   : Disable
setprop hwui.disable.vsync true
setprop debug.cpurend.vsync 0
setprop debug.gpurend.vsync 0
echo " 🕗 : Disable GPU and CPU VSYNC           [OK] "

sleep 2
# Enable Touch Improvement / sampling rate

setprop touch.pressure.scale=0.0001
setprop touch.size.calibration=diameter
setprop touch.pressure.calibration=amplitude
setprop touch.size.scale=1
setprop touch.size.bias=0
setprop touch.size.isSummed=0
setprop touch.orientation.calibration=none
setprop touch.size.isSummed=0 
setprop touch.orientation.calibration=none 
setprop touch.distance.calibration=none 
setprop touch.distance.scale=0 
setprop touch.coverage.calibration=box 
setprop touch.gestureMode=spots 
setprop MultitouchSettleInterval=1ms 
setprop MultitouchMinDistance=1px 
setprop TapInterval=1ms 
setprop TapSlop=1px
setprop windowsmgr.max_events_per_sec=90
setprop view.scroll_friction=0
echo " 🕗 : Enable Touch Improvement            [OK] "

sleep 2
# Swapinterval
setprop debug.gr.swapinterval 1
FPS Stabilizer
Enable swapinterval   : 1
Disable swapinterval  : 0
setprop debug.egl.swapinterval 1
echo " 🕗 : Setup Screen Framerate              [OK] "

sleep 2
# Disable for limit 3d setting
# Enable    : 1
# Disable   : 0

setprop debug.sf.showfps 0
setprop debug.sf.showcpu 0
setprop debug.sf.showbackground 0
setprop debug.sf.shoupdates 0
echo " 🕗 : Disable FPS Sync                    [OK] "

echo " "
sleep 2
# Change render engine to SKIAGL
setprop debug.renderengine.backend skiagl
setprop debug.renderengine.backend skiaglthreaded
echo " 🕗 : Enable Render Engine                [OK] "

sleep 2
echo " "
echo "                        ▒▒▒▒ NOTES ▒▒▒▒                        "
echo " "

sleep 1
# Kill memory-cache / proses latar belakang memory
# am kill-all
# End
echo " 📲 : All Tweaks is actived!!        [SUCCESS] "
sleep 0.5
echo " 📲 : Done and Don't Reboot your Phone!        "
sleep 0.5
echo " 📲 : Let's Play, Mobile Legends Bang Bang.    "
sleep 0.5
echo " "
echo "▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
echo " "
exit

# ========================================================================
# Thank you!
# Update : 20231205 | 21.21
