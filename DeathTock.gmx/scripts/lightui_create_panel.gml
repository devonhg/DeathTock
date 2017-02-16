///lightui_create_panel()
var panel_id = instance_create(0, 0, obj_lightui_panel);

with(panel_id)
{
    // How many panels are attached to container
    index = array_length_1d(other._panels);
    
    // Add the panel to the container
    other._panels[index] = self.id;

    // Set the parent
    _parent = other.id;
    
    // Set the panel index
    _index = index;
}

return panel_id;
