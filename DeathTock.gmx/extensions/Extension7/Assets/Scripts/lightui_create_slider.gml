///lightui_create_slider(x,y,width,value,slider_name,callback_script)
var slider_id = instance_create(0, 0, obj_lightui_slider);

with(slider_id)
{
    _x = argument0;
    _y = argument1;
    _w = argument2;
    _value = clamp(round(argument3), 0, 100);
    _id = argument4;
    _cb = argument5;
    _parent = other.id;
    with(other)
    {
        lightui_add_child(slider_id);
    }
}

return slider_id;