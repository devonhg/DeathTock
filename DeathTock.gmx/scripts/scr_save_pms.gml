///scr_save_pms();
/*
    This script saves the personal mission statement
*/


ini_open("save_data.ini");

    ini_write_string(  "mission", "pms", argument[0] );

ini_close();
