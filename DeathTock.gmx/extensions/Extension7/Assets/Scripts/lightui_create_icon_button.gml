///lightui_create_icon_button(x,y,icon_index,button_name,callback_script)
var icon_button_id = instance_create(0, 0, obj_lightui_icon_button);

with(icon_button_id)
{
    _x = argument0;
    _y = argument1;
    _index = argument2;
    _id = argument3;
    _cb = argument4;
    _parent = other.id;
    with(other)
    {
        lightui_add_child(icon_button_id);
    }
}

return icon_button_id;