///lightui_add_child(instance_id)

new_instance = argument0;

// If adding to a scroll box, create a dummy object to wrap the object
if(object_get_name(object_index) == 'obj_lightui_scroll_box')
{
    dummy = instance_create(0,0, obj_lightui_scroll_box_dummy);
    with(dummy)
    {
        _parent = other.id;
        lightui_add_child(other.new_instance);
    }
    
    with(new_instance)
    {
        _parent = other.dummy;
    }
    
    new_instance = dummy;
}

if(is_array(_children))
{
    _children[array_length_1d(_children)] = new_instance;
}else{
    _children[0] = new_instance;
}