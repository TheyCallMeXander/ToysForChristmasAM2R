if (open == 0)
{
    if (type == 0)
        sprite_index = sMflash
    if (type == 1)
        sprite_index = sWMflash
    image_speed = 0.25
    scale = 1
}
if (open == 1)
{
    if (scale < maxsize)
        scale += 0.01
    if (type == 1)
        sprite_index = sWBeamExpl
    if (type == 0)
        sprite_index = sBeamExpl
    image_speed = 0.2
}
image_xscale = scale
image_yscale = scale
