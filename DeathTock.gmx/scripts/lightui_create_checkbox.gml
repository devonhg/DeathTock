///lightui_create_checkbox(x,y,checkbox_state,text,checkbox_name,callback_script)
var checkbox_id = instance_create(0, 0, obj_lightui_checkbox);

with(checkbox_id)
{
    _x = argument0;
    _y = argument1;
    _state = argument2
    _t = argument3
    _id = argument4;
    _cb = argument5;
    _parent = other.id;
    with(other)
    {
        lightui_add_child(checkbox_id);
    }
}

return checkbox_id;
