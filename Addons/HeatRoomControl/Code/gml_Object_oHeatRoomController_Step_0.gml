if (type == vSuit)
{
    if ((global.item[5] == 0 && global.currentsuit == 2) || global.currentsuit == 0)
        heatdamage = 0.1
    else
        heatdamage = 0
}
if (type == gSuit)
{
    if (global.currentsuit == 0)
        heatdamage = 0.2
    if (global.currentsuit == 1)
        heatdamage = 0.1
    if (global.currentsuit == 2)
        heatdamage = 0
}
if (type == anySuit)
{
    if (global.currentsuit == 0)
        heatdamage = 0.1
    else
        heatdamage = 0
}
if (type == bothSuits)
{
    if (global.currentsuit == 0)
        heatdamage = 0.2
    if (global.currentsuit == 1 || (global.currentsuit == 2 && global.item[5] == 0))
        heatdamage = 0.1
    if (global.currentsuit == 2 && global.item[5] == 1)
        heatdamage = 0
}
if (type == eternal)
{
    heatdamage = 0.05
    if (global.playerhealth <= 99)
    {
        if (global.currentsuit == 0)
            heatdamage *= 0.8
        if (global.currentsuit == 1)
            heatdamage *= 0.6
        if (global.currentsuit == 2)
            heatdamage *= 0.4
    }
    if oControl.mod_fusion
        heatdamage *= 2
    if (instance_exists(oSaveStation) || instance_exists(oSaveStation2) || instance_exists(oSaveShip) || instance_exists(oEventCamera) || instance_exists(oEventCamera2))
        heatdamage = 0
    if instance_exists(oCharacter)
    {
        if (oCharacter.state == oCharacter.A4EXPL && global.playerhealth <= 50)
            global.playerhealth = 50
    }
}
if (heatdamage > 0)
{
    global.playerhealth -= heatdamage
    sfxtime++
    if (sfxtime >= 60)
    {
        sfx_play(sound2)
        sfxtime = 0
    }
    if (!sfx_isplaying(sound1))
        sfx_play(sound1)
}
if (heatdamage == 0)
    sfxtime = 0
