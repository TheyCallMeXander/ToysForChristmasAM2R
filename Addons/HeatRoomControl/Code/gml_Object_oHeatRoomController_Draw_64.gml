var d;
if surface_exists(heateffect)
    surface_free(heateffect)
if (!surface_exists(heateffect))
    heateffect = surface_create((320 + oControl.widescreen_space), 240)
surface_reset_target()
if (type == vSuit)
    color = c_orange
if (type == gSuit)
    color = c_blue
if (type == bothSuits)
    color = c_red
if (type == anySuit)
    color = c_yellow
if (type != eternal)
{
    draw_set_alpha(0.15)
    d = application_get_position()
    draw_rectangle_color((oControl.displayx - d[0]), (oControl.displayy - d[1]), ((320 + oControl.widescreen_space) * oControl.display_scale), (240 * oControl.display_scale), color, color, color, color, 0)
    draw_set_alpha(1)
}
