///scr_update_days_left();
/*
    Update the number of days left to be stored.
*/

ini_open("save_data.ini");
    global.days_left_since = global.days_left;
    ini_write_real(  "death_date", "days_left", global.days_left );
ini_close();
