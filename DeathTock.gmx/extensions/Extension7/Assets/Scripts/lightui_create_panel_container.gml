///lightui_create_panel_container()
var container_id = instance_create(0, 0, obj_lightui_panel_container);

with(container_id)
{
    _parent = other.id;
}

return container_id;