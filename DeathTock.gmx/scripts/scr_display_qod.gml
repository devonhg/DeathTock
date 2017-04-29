#define scr_display_qod
///scr_display_qod();
/*
    Display the current quote of the day
*/

var _qod = "How much wood would a woodchuck chuck if a woodchuck could chuck wood?"

scr_load_menu_overlay( "Quote Of The Day", scr_display_qod_func, _qod ); 

#define scr_display_qod_func
