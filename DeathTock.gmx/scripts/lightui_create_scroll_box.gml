///lightui_create_scroll_box(x,y,width,height,scroll_step)
var scroll_box_id = instance_create(0, 0, obj_lightui_scroll_box);

with(scroll_box_id)
{
    _x_offset = argument0;
    _y_offset = argument1;
    _w = argument2;
    _h = argument3;
    _scroll_step = argument4;
    _parent = other.id;
}

return scroll_box_id;
