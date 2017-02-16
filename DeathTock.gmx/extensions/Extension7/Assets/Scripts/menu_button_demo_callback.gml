///menu_button_demo_callback(button_id)
with(obj_test_console)
{
    _text = "Callback fired for menu button id: " + string(argument0);
}

// Determine what action should be taken
if(argument0 == 'test_settings'){
    goto_room_name = rm_lightui_settings;
}else if(argument0 == 'test_play'){
    goto_room_name = rm_lightui_level_buttons;
}else if(argument0 == 'test_icon_buttons'){
    goto_room_name = rm_lightui_icon_buttons;
}else if(argument0 == 'test_show_info'){
    goto_room_name = rm_lightui_info;
}else if(argument0 == 'test_home'){
    goto_room_name = rm_lightui_splash;
}else if(argument0 == 'test_scroll_box'){
    goto_room_name = rm_lightui_scroll_box;
}else if(argument0 == 'test_level_complete_badge'){
    goto_room_name = rm_lightui_level_complete_badge;
}else{
    return '';
}

// Start transition
with(obj_test_transition)
{
    change_room(other.goto_room_name);
}