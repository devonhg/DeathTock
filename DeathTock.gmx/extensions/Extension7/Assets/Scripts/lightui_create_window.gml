///lightui_create_window(x,y,width,height,window_caption,window_outline)
var window_id = instance_create(0, 0, obj_lightui_window);

with(window_id)
{
    _x = argument[0];
    _y = argument[1];
    _w = argument[2];
    _h = argument[3];
    _t = argument[4];
    if(argument_count > 5)
    {
        _o = argument[5];
    }
}

return window_id;