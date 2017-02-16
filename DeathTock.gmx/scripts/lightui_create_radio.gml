///lightui_create_radio(x,y,radio_state,text,value,radio_name,callback_script)
var radio_id = instance_create(0, 0, obj_lightui_radio);

with(radio_id)
{
    _x = argument0;
    _y = argument1;
    _state = argument2
    _t = argument3
    _value = argument4;
    _id = argument5;
    _cb = argument6;
    _parent = other.id;
    with(other)
    {
        lightui_add_child(radio_id);
    }

    // Make sure only one radio is active
    if(_state == 1)
    {
        with(obj_lightui_radio)
        {
            if(self._id = other._id && self.id != other.id)
            {
                self._state = 0;
            }
        }
    }
}

return radio_id;
