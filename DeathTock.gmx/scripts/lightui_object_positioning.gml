///lightui_object_positioning()

visible = _parent.visible;

if(_x == noone)
{
    // Center in lightui window
    button_x = round(_parent._x + ((_parent._w - _w) / 2));
}else{
    // Regular x offset
    button_x = _parent._x + _x;
}

if(_y == noone)
{
    // Center in lightui window
    button_y = round(_parent._y + ((_parent._h - _h) / 2));
}else{
    // Regular y offset
    button_y = _parent._y + _y;
}
