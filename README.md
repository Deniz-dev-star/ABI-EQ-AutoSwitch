   	QUICK INSTALLATION GUIDE
    
    Download latest release:
https://github.com/KaxyCode/ABI-EQ-AutoSwitch/releases/latest

!!FOLLOW STEP BY STEP!!

1 Download EqualizerAPO Linked: -> (https://equalizerapo.com/) (and select the correct audio device)

2. Reboot once after installing APO.

3. Follow APO File trajectory.
example: (C:\Program Files\EqualizerAPO\)

4. Delete already existing "config" Folder. (no worry the config can be easily cleared or replaced, there is no messing around with APO itself, it is just a convenient way to set up the EQ together with the EQ_AtoSwitch)

5. Place the new config Folder in EqualizerAPO Folder after old config has been deleted.

6. Download VST2 Plugin v1.46 for Windows PC 64bit From: -> (https://loudmax.blogspot.com/) !!!USE 64bit, NOT 32bit IT WILL NOT WORK WITH APO!!!

7. Extract "LoudMax_v1_46_WIN_VST2", then open Extracted Folder and move the "LoudMax.dll" File into the EqualizerAPO Folder.

8. Open EqualizerAPO through "window search" or "Editor.exe" in File trajectory.

9. Click File (Top Left) -> Open -> Click "config.txt" (make sure the Power button glows white, if not click it)

10. Make sure the Box next to "Include" reads "ACTIVE.txt" if not click the folder icon left of the green arrow and click "ACTIVE.txt"

11. Move "ABI_AUDIOSWITCH.exe" into: "Win + R" → "shell:startup" Folder  
Right-click "ABI_AUDIOSWITCH.exe" → Properties → Compatibility → enable "Run this program as an administrator" right click the .exe again → "Run as administrator"

12. In the Config Folder is an "AHK_LOG.txt" meant as a Status Log/debugging tool. It will show you if it detects the Game opened/closed and if it changes the Preset EQ. (note! do not change Filenames or anything else unless expressed or you know what you are doing. If the it's not working, try restart PC or run .exe as administrator again. Otherwise go through the checklist again.)

13. Best for common practise when using this preset is to check if the "ABI_AUDIOSWITCH.exe" is running. If you click the ︿ at the bottom right, there should be a white "H" in a green box, if not press "Win+R" and type: "shell:startup", if your .exe is located in the startup Folder. Right click, then run as admin. (there should be no issue doing this while the game is open.)

-- If you have not the need to make your Headphones sound more crisp/closer to the way their supposed to sound in general when ABI is closed. Congrats your done!!! --

-- explanation on how to ajust or how everything works See the explanation folder or you can inspect the ahk File to inspect the code! --

Credits: to YT: Stereo Bites  
YT: crinacle

13. Go to Crinicle's Website:

IEMs:
"https://graph.hangout.audio/iem/5128/?share=JM-1_Target,Daybreak&bass=0&tilt=-1&treble=0&ear=0"

Headphones:
"https://graph.hangout.audio/headphones/?share=KEMAR-DF_(KB50XX)_Target,HD600_S3_(2020)_(fresh_pads)&bass=4&tilt=-1&treble=0&ear=0"


Note: this process can get quite wonky, I recommend to watch crinacle's video:
"https://www.youtube.com/watch?v=PsijHAVLbuY"


Enter the name and brand (or just the brand) of your headphones in the searchbar, select them, switch over to Equalizer and hit autoEQ, then if your satisfied hit "Export Parametric EQ" and download the .txt File.

It should look like something similar to this ↓  
copy it! and paste it into the "HEADPHONES_EQ.txt" File inside the config.  
(you can always delete whats inside the "HEADPHONES_EQ.txt" if there are no values set there is nothing to run!)

Example:

Preamp: -7.1 dB
Filter: ON PK Fc 22 Hz Gain -3 dB Q 1
Filter 2: ON PK Fc 84 Hz Gain 1.2 dB Q 1.000
Filter 3: ON PK Fc 180 Hz Gain -1.6 dB Q 2.000
Filter 4: ON PK Fc 500 Hz Gain 3.0 dB Q 1.100
Filter 5: ON PK Fc 1600 Hz Gain -2.3 dB Q 0.900
Filter 6: ON PK Fc 3000 Hz Gain 3.2 dB Q 2.000
Filter 7: ON PK Fc 7200 Hz Gain 5.0 dB Q 0.500
Filter 8: ON PK Fc 8600 Hz Gain -3.6 dB Q 1.100
Filter 9: ON PK Fc 10000 Hz Gain 7.7 dB Q 1.900
Filter 10: ON PK Fc 13000 Hz Gain -6.6 dB Q 2.000


