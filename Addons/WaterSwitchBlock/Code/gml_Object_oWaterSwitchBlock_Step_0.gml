if (y >= global.waterlevel)
    inwater = 1
if (y < global.waterlevel)
    inwater = 0
if (initialized >= 30)
{
    if (previnwater != inwater)
        active += 1
    if (active > 1)
        active = 0
    if (active == 0)
    {
        block.x = -120
        block.y = -120
        fade += 1
    }
    if (active == 1)
    {
        block.x = x
        block.y = y
        fade -= 1
    }
}
if (initialized < 30)
    initialized += 1
fade = clamp(fade, 0, 30)
