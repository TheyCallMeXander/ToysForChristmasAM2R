if (open == 1)
{
    if (targetroom != room)
    {
        with (other)
            instance_destroy()
        with (other.flame)
            instance_destroy()
        with (other.trail)
            instance_destroy()
    }
    if (targetroom == room)
    {
        other.x = (targetx - ((scale * 16) / 2))
        other.y = (targety - ((scale * 16) / 2))
        with (other.trail)
            image_xscale = 0
    }
}
