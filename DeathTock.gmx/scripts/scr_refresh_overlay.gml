///scr_refresh_overlay( "title", Script, "text" );
//Destroys/Rebuilds the menu overlay. -1 scipts an argument
if instance_exists( obj_menu_overlay ){
    var _text = obj_menu_overlay.text,
        _script = obj_menu_overlay.script,
        _title = obj_menu_overlay.title, i;
        
    if( argument[0] != -1 ){
        _title = argument[0];
    }    if( argument[1] != -1 ){
        _script = argument[1];
    }    if( argument[2] != -1 ){
        _text = argument[2];
    }
        
    with( obj_menu_overlay ){ instance_destroy() };
    
    scr_load_menu_overlay( _title, _script, _text ); 
}
