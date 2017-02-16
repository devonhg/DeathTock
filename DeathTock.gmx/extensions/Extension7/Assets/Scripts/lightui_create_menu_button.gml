///lightui_create_menu_button(x,y,width,text,button_name,callback_script)
var button_id = instance_create(0, 0, obj_lightui_menu_button);

with(button_id)
{
    _x = argument0;
    _y = argument1;
    _w = argument2;
    _t = argument3;
    _id = argument4;
    _cb = argument5;
    _parent = other.id;
    with(other)
    {
        lightui_add_child(button_id);
    }
}

return button_id;