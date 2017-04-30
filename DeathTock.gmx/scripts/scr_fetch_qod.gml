///scr_fetch_qod()
/*
    This script fetches the quote of the day and returns it as a string. 
*/

if( global.qod == "" ){
    var _total_quotes = array_height_2d( global.qdb ),
        _choose = irandom( _total_quotes );
    global.qod = string( global.qdb[ _choose, 0 ] ) + " -" + string( global.qdb[ _choose, 1 ] );
    return global.qod;
}else{
    return global.qod;
}  
