if other.chargebeam
    open = 1
if open
{
    if (room != targetroom)
    {
        with (other)
            instance_destroy()
    }
    if (room == targetroom)
    {
        other.x = (targetx - ((scale * 16) / 2))
        other.y = (targety - ((scale * 16) / 2))
    }
}
