///level_button_demo_callback(button_id)
with(obj_test_console)
{
    _text = "Callback fired for level button id: " + string(argument0);
}

with(obj_test_transition)
{
    change_room(rm_lightui_splash);
}