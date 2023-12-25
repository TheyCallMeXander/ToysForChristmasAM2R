oHeatRoomController by Xander, contributed free of charge to the AM2R Modding Community
A single object for handling all forms of heat in a room! Includes 5 types of heat, with a very simple yet customizable set of variables toggled with Room Create Code! (Does not include heat wave effects)

-Installation instructions-
1. Load the data.win for the project you want this to be used in in UTMT.
2. Once loaded, navigate to the Scripts/ResourceRepackers Tab and select "ImportGML.csx"
3. Navigate to the inclosed "Code" Folder and select it.
4. The script will ask you if you wish to automatically link imported code. Clicking Yes will prompt the app to create a new "oHeatRoomController" Object if you do not have one.
5. If you do not have the oHeatRoomController object, click yes on both options. If you do have the oHeatRoomController Object and do not wish to automatically link code, click "No" and it will simply add it to the codebase.

-Additional tips-
1. Make sure the oHeatRoomController object is visible, otherwise the effect will not draw.
2. to change the color of a specific type, go to oHeatRoomController_Draw_64. Each type is distinctly named and colored by default.
3. "sound1" uses the balljump sound by default. It is recommended that you change sound1 in the Step Event to something more fitting. This was done because all common "drain" and "lava" sounds are automatically ended in the characterStepEvent script. A goal of mine is to not change built-in am2r scripts for these addons, and to need to import as little as possible.
4. I recommend setting the object to "visible" and the object depth to "-500" so it appears over most common tile IDs and objects, but well below the GUI and IGT depths. I also recommend giving the object something like the FX sprite so you can see it in the UTMT Room Editor.

Types:
0. vSuit; This type only checks if you have Varia Suit equipped, or if you own Varia with gravity suit equipped
1, gSuit; This type only checks if you have Gravity Suit equipped
2. anySuit; If you have any suit upgrade, the damage is 0
3. bothSuits; This suit checks if you have both suits. If 1 suit upgrade, damage taken is halved, if both suits owned and gravity equipped damage is 0
4. eternal; A recreation of the Eternal Hellrun mod by Dodobirb. Suits grant no resistance to damage, unless under 100 total energy. Damage doubles on Fusion difficulty. Save Rooms and Camera Cutscenes don't allow heat damage, and the A4 Explosion leaves you at 50 Energy instead of 5.

-Usage-
Assign RoomCC per oHeatRoomController you want, you can recycle the same RoomCC script for duplicate effects. Below are the RoomCC variables you should use.
 type: sets what type of heat effect you want to use (vSuit, gSuit, anySuit, bothSuits, eternal)
 sound1: The main tick sound for damage. Defaults to "sndBallBounce"
 sound2: The secondary tick sound. Plays every 60 ticks. Defaults to "sndHurt"

-I want to add Eternal Hellrun-
To add Eternal Hellrun, preferably under a toggleable variable, go to the characterStepEvent and add the following:
{
if (!(instance_exists(oHeatRoomController)))
  var hrc = instance_create(x, y, oHeatRoomController)
hrc.type = eternal
}

Merry Christmas, from Xander.
