ini_open("save_data.ini");

if( ini_key_exists( "death_date", "year" ) ){
    global.first_run = false; 
    show_message( "loading data" )
}else{
    global.first_run = true; 
    new_death_day = date_inc_year(date_current_datetime(), 10); 
    ini_write_real(  "death_date", "year", date_get_year( new_death_day ) );
    ini_write_real(  "death_date", "month", date_get_month( new_death_day ) );
    ini_write_real(  "death_date", "day", date_get_day( new_death_day ) );
    show_message("first run")
}

global.deathdate[0] = ini_read_real( "death_date", "year", 2026 );//Year
global.deathdate[1] = ini_read_real( "death_date", "month", 11 );//Month
global.deathdate[2] = ini_read_real("death_date", "day", 9 );//Day

ini_close(); 
