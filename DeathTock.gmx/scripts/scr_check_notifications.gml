///scr_check_notifications();
/*
    This script checks and populates notifications for up to 30 days
    on out. 
*/

var map = ds_map_create(),
    ntf = push_get_first_local_notification(map),
    size = ds_map_size(map), i,
    _date = date_current_datetime(); 
 
for( i = 1; i < 30; i++ ){   
    if( ntf < 0 ){
        var _next_date = date_inc_day(_date, i);
        push_local_notification( _next_date, "A New Day", "Inspect todays quote and updated your mission.", "daily_notification" );
    }
    ntf = push_get_next_local_notification(map);    
}

    
ds_map_destroy(map);
