/*
    The initiation script for the game
*/

    draw_set_font( fnt_debug_font ); 

/*****
    Scripts
*****/
    scr_ini_precheck(); 
    scr_check_data();
    scr_globals(); 
    scr_quote_database();
    scr_ini_postcheck(); 

/*****
    Controllers
*****/
    dt_add_persistent_con( obj_master, obj_push_notifications, obj_form_handler );
    dt_add_room_con( rm_main_app, obj_rm_main_app ); 
