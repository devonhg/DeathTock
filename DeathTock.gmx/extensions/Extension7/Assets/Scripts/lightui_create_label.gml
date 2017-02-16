///lightui_create_label(x,y,text)
var label_id = instance_create(0, 0, obj_lightui_label);

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