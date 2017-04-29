ini_open("save_data.ini");

if( ini_key_exists( "death_date", "year" ) ){
    global.first_run = false; 
    //show_message( "loading data" )
}else{
    global.first_run = true; 
    new_death_day = date_inc_year(date_current_datetime(), 10); 
    var _year = date_get_year( new_death_day ),
        _month = date_get_month( new_death_day ),
        _day = date_get_day( new_death_day );
    
    ini_write_real(  "death_date", "year", _year );
    ini_write_real(  "death_date", "month", _month );
    ini_write_real(  "death_date", "day", _day );
    //ini_write_real(  "death_date", "days_left", 3650 );
    //show_message("first run")
}

global.deathdate[0] = ini_read_real( "death_date", "year", 2026 );//Year
global.deathdate[1] = ini_read_real( "death_date", "month", 11 );//Month
global.deathdate[2] = ini_read_real("death_date", "day", 9 );//Day
//global.days_left_since = ini_read_real( "death_date", "days_left", 3650 );

ini_close(); 
