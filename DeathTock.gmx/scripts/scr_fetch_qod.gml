#define scr_fetch_qod
///scr_fetch_qod()
/*
    This script fetches the quote of the day and returns it as a string. 
*/

//Check to make sure we have a quote of the day first. 
if( global.qod == "" ){
    scr_change_qod();
    return global.qod;
}else{ //Otherwise, just go get it.
    return global.qod;
}
 

#define scr_change_qod
///scr_choose_qod
/*
    Picks a new qod and returns it.  and returns the new quote of the day. 
*/    
    
var _total_quotes = array_length_1d( global.qdb ) - 1,
    _choose = irandom( _total_quotes );

global.qod = global.qdb[ _choose ];

ini_open("save_data.ini");
    ini_write_string( "Quotes", "qod", global.qod );
ini_close();