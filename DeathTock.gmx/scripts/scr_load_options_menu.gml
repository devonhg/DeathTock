#define scr_load_options_menu
scr_load_menu_overlay( "Settings", scr_option_menu_items );

#define scr_option_menu_items
var _w = display_get_gui_width(),
    _h = display_get_gui_height(),
    _w_grd = _w/8,
    _h_grd = _h/8; 
    
scr_add_button( 
    _w_grd * 2, 
    _h_grd, 
    spr_icon_calendar, 
    scr_edit_dd_day, 
    ord("E"), 
    true,
    "Update Day"
);

scr_add_button( 
    _w_grd * 2, 
    _h_grd * 2, 
    spr_icon_calendar, 
    scr_edit_dd_month, 
    ord("C"), 
    true,
    "Update Month"
);

scr_add_button( 
    _w_grd * 2, 
    _h_grd * 3, 
    spr_icon_calendar, 
    scr_edit_dd_year, 
    ord("D"), 
    true,
    "Update Year"
);