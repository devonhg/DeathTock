///scr_add_button(x,y,sprite,script, keyboard key, (menu overlay), ( caption ) );
/*
    add a button to the app, specify what script to run when tapped/clicked.   
*/

//show_message( "building button" )

var _butt = instance_create( argument[0], argument[1], obj_button, );

_butt.sprite = argument[2];
_butt.script= argument[3]; 
_butt.key = argument[4]; 

if( argument_count > 5 ){
    _butt.part_overlay = argument[5]; 
}

if( argument_count > 6 ){
    _butt.caption = argument[6]; 
}
