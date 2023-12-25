 Water Switch Block by Xander, contributed free of charge for the AM2R Modding Community

The Water Switch Block switches between Solid and Non-Solid states depending on the Water Level.
This can be used in puzzles that switch water level in a room to block paths and allow progress forward, or to create bridges.

-Installation instructions-
1. Load the data.win for the project you want this to be used in in UTMT.
2. Once loaded, navigate to the Scripts/ResourceRepackers Tab and select "ImportGML.csx"
3. Navigate to the inclosed "Code" Folder and select it.
4. The script will ask you if you wish to automatically link imported code. Clicking Yes will prompt the app to create a new "oWaterSwitchBlock" Object if you do not have one.
5. If you do not have the oWaterSwitchBlock object, click yes on both options. If you do have the oWaterSwitchBlock Object and do not wish to automatically link code, click "No" and it will simply add it to the codebase.

-Sprite Installation-
1. navigate to Scripts/ResourceRepackers and select the script "ImportGraphics.csx"
2. Navigate to, and select the included "Sprites" Folder
3. Confirm selection of the sprite.
/!\ It may be wise to import many sprites at once, as opposed to using the ImportGraphics script on individual sprites, as it helps to lighten the resource load by reducing Texture Page usage. To do so, simply place all of the sprites for the mods you are compiling into the same "Sprites" Folder.

-Additional Setup-
 -oWaterSwitchBlock uses the included sWaterSwitchBlock sprite by default. While it is not required, it is worth noting that you will want to set a sprite for the block ahead of time to see it in the editor, or to see it in-game. A simple bypass to the sprite would be to set a different sprite, then in RoomCC for an object set "sprite_index = sExample" for the sprite you wish to use. all sprites assigned to this object should be 16x16, with a Top-Right Origin point to properly place the oSolid collision.
 -You can also set whether the block is "active" or not by setting "active = 0" for non-solid or "active = 1" for solid. This allows you to set different WaterSwitchBlocks to change their state based on water, instead of limiting them all to being solid/nonsolid in water.
