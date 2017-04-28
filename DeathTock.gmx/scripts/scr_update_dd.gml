///scr_update_dd( day, month, year );
/*
    Enter "-1" to skip updating certain values. 
*/

ini_open("save_data.ini");

if( argument[0] != -1 ){
    global.deathdate[2] = argument[0];
    ini_write_real(  "death_date", "day", argument[0] );
}

if( argument[1] != -1 ){
    global.deathdate[1] = argument[1];
    ini_write_real(  "death_date", "month", argument[1] );
}

if( argument[2] != -1 ){
    global.deathdate[0] = argument[2];
    ini_write_real(  "death_date", "year", argument[2] );
}

ini_close();
