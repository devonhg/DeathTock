///lightui_create_container(x,y,width,height)
var container_id = instance_create(0, 0, obj_lightui_container);

with(container_id)
{
    _x = argument[0];
    _y = argument[1];
    _w = argument[2];
    _h = argument[3];
    _parent = other.id;
    with(other)
    {
        lightui_add_child(container_id);
    }
}

return container_id;