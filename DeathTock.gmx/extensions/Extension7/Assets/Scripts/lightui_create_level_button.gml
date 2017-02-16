///lightui_create_level_button(x,y,star_count,level_locked,text,button_name,callback_script)
var level_button_id = instance_create(0, 0, obj_lightui_level_button);

with(level_button_id)
{
    _x = argument0;
    _y = argument1;
    _index = clamp(argument2, 0, 3);
    _active = !argument3;
    _t = argument4;
    _id = argument5;
    _cb = argument6;
    _parent = other.id;
    with(other)
    {
        lightui_add_child(level_button_id);
    }
}

return level_button_id;