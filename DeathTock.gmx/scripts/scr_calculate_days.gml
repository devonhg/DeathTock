///scr_calculate_days( year, month, day );
/*
    This script returns the number of days until the entered date. 
*/

var c = date_current_datetime(); 
var d = date_create_datetime( argument[0], argument[1], argument[2], 12, 0, 0 ); 

var comp = date_compare_date( d, c ); 

var o = floor( date_day_span( d, c ) ) * comp; 

return o; 
