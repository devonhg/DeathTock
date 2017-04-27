/*
    The initiation script for the game
*/

    draw_set_font( fnt_debug_font ); 

/*****
    Scripts
*****/
    scr_check_data();
    scr_globals(); 

/*****
    Controllers
*****/
    dt_add_persistent_con( obj_master, obj_push_notifications );
    dt_add_room_con( rm_main_app, obj_rm_main_app ); 
