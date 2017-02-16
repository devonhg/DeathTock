///lightui_create_label_right_align(x,y,text)
var label_id = instance_create(0, 0, obj_lightui_label_right_align);

with(label_id)
{
    _x = argument0;
    _y = argument1;
    _t = argument2
    _parent = other.id;
    with(other)
    {
        lightui_add_child(label_id);
    }
}

return label_id;
