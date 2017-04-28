#define scr_load_menu_overlay
///scr_load_menu_overlay( title, script );
if( !instance_exists( obj_menu_overlay ) ){
    var inst = instance_create( 0,0, obj_menu_overlay );
    
    inst.title = argument[0];
    
    //Pass the object id into the script so that
    script_execute( argument[1], inst );
}



#define sc_close_menu_overlay
with( obj_menu_overlay ){
    instance_destroy(); 
}
