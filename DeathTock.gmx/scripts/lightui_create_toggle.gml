///lightui_create_toggle(x,y,toggle_state,toggle_name,callback_script)
var toggle_id = instance_create(0, 0, obj_lightui_toggle);

with(toggle_id)
{
    _x = argument0;
    _y = argument1;
    _state = argument2
    _id = argument3;
    _cb = argument4;
    _parent = other.id;
    with(other)
    {
        lightui_add_child(toggle_id);
    }
}

return toggle_id;
