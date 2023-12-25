Charged Portal by Xander, contributed free of charge for the AM2R Modding Community

The Charged portal is a room transition and teleportation tool for Modding Developers in their future projects. The Charged Portal by default opens when shot with any charged beam. When open, and touched by the player it will teleport them to a new position in the room, or to an entirely different room. The portal can also teleport the player's Beams and Missiles if the portal goes to the same room.

-Installation instructions-
1. Load the data.win for the project you want this to be used in in UTMT.
2. Once loaded, navigate to the Scripts/ResourceRepackers Tab and select "ImportGML.csx"
3. Navigate to the inclosed "Code" Folder and select it.
4. The script will ask you if you wish to automatically link imported code. Clicking Yes will prompt the app to create a new "oChargedPortal" Object if you do not have one.
5. If you do not have the oChargedPortal object, click yes on both options. If you do have the oChargedPortal Object and do not wish to automatically link code, click "No" and it will simply add it to the codebase.

-Setup Instructions-
/!\ When importing the code and Creating a new Object, you will need to assign the Object a Sprite so it can be seen in the Room Editor.

To use a ChargedPortal Object I have included a modular setup in the Code. To use this setup, give an object in a room "RoomCreateCode." This overwrites the default values and in some cases is required for the portal to function.

"type" determines what the portal looks like. Defaulting to type 0. Included are 2 types, using default am2r assets.

"maxsize" determines how large the portal grows to after being activated. This is a multiplier off the base sprite size. Defaulting to size "3"

"targetroom" determines which room the player is sent to. Defaulting to "room". If the portal is set to "room" the portal teleports players and default projectiles to the target coordinates within the same room. If the targetroom is not the same room as the portal, it will room transition the player, and destroy default player projectiles.

"targetx" and "targety" are the position which the player is sent to, defaulting to "0" for both. Without this variable set in RoomCC, the Portal will not function in a useful way.

"camstartx" and "camstarty" are the position the Camera snaps to when entering the new room, defaulting to 0. This is vital to the transition looking good, but is not technically required.

-Modification Instructions-
If you wish to modify the base sprites or add new types to the portal, this section is for you.
In the "oChargedPortal_Step_0" code, you can change the sprite per "type" and add new types.

To change the sprite of a type, find the type's "sprite_index" and change it from the default.
Example: type 0 uses sprite_index = sMflash (the power beam Muzzzle Flash) for a closed portal. If you have a sprite you want like "sAetherPortalClosed" you could replace "sMflash" and you'd have your own custom sprite for the portal.
to add a new "type" it's as simple as adding "if type == 2", "== 3" and so on, and adding the new sprite_index per type.

To add a custom transition, you will need to add a transition type in object oTransition.
after adding the new transition type, go to the Collision Event for object oCharacter and change the "room_change()" function's second argument from "0" to your preferred transition type.
/!\ If you have not programmed a new transition type's behavior, simply adding a new number will not help you.

-Additional Information-
If you intend to have long distance puzzles with Teleported Beams or Missiles, you may want to activate Long Range in a room by adding "global.objdeactivate = 0" in the room's Creation Code.

Merry Christmas, from Xander.
