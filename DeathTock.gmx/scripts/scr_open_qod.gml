#define scr_open_qod
///scr_display_qod();
/*
    Display the current quote of the day
*/

var _qod = scr_generate_qod_text();

scr_load_menu_overlay( "Your Development", scr_display_qod_func, _qod ); 

#define scr_display_qod_func
var _w = display_get_gui_width(),
    _h = display_get_gui_height(),
    _w_grd = _w/8,
    _h_grd = _h/8; 
    
scr_add_button( 
    _w_grd * 2, 
    _h_grd * 7, 
    spr_icon_pencil, 
    scr_button_edit_pms, 
    ord("L"), 
    true,
    "Update Mission"
);

scr_add_button( 
    _w_grd * 5.5, 
    _h_grd * 7, 
    spr_icon_question, 
    scr_button_learn_pms, 
    ord("M"), 
    true,
    "Learn More"
);


#define scr_button_edit_pms
///scr_button_edit_pms()
if( global.update_pms = -1 ){
    global.update_pms = get_string_async("Edit your Personal Mission Statement, Keep it to one sentence.", global.pms);
}

#define scr_button_learn_pms
///scr_button_learn_pms();
url_open( "http://playfrey.tech/personal-mission-statements/" );

#define scr_generate_qod_text
///Generate and return QOD Text
return "#####Quote Of The Day##" + scr_fetch_qod() + '##_________________________________###Personal Mission Statement##"' + global.pms + '"';