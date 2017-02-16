///lightui_object_hover()

_hover = 0;
if(visible)
{
    if(mouse_x >= button_x and mouse_x <= button_x + _w)
    {
        if(mouse_y >= button_y and mouse_y <= button_y + _h)
        {
            _hover = 1;
        }
    }
}
