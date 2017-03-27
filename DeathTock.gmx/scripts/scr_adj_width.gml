///scr_adj_width( extra reduction )
/*
    Sets the width of sprites to match the width of the view.
    
    enter a decimal value for how much extra percentage to reduce the sprite
*/
var _extra_adj = 0; 
if( argument_count > 0 ){
    _extra_adj = argument[0]
}

//Scale down sprite if too big
if( sprite_width > view_wview ){
    spr_mult = (view_wview[0] / sprite_width) - _extra_adj; 
    
    image_xscale = spr_mult; 
    image_yscale = spr_mult; 
}
