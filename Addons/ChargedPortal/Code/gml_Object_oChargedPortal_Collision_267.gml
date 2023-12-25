if open
{
    if (targetroom != room)
    {
        global.targetx = targetx
        global.targety = targety
        global.camstartx = camstartx
        global.camstarty = camstarty
        oCamera.x = global.camstartx
        oCamera.y = global.camstarty
        room_change(targetroom, 0)
        Mute_Loops()
        StopAmbLoops()
    }
    if (targetroom == room)
    {
        oCharacter.x = targetx
        oCharacter.y = targety
        oCamera.x = camstartx
        oCamera.y = camstarty
    }
}
with (oChargedPortal)
    oChargedPortal.open = 0
