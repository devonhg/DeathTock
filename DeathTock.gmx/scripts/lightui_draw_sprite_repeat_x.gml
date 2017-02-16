///lightui_draw_sprite_repeat_x(sprite,subimage,x,y,width,border)

height = sprite_get_height(argument0);
width = sprite_get_width(argument0);

// Draw left end
draw_sprite_part(argument0, argument1, 0, 0, argument5, height, argument2, argument3);

// Draw right end
draw_sprite_part(argument0, argument1, width - argument5, 0, argument5, height, argument2 + argument4 - argument5, argument3);

// Draw middle
draw_sprite_part(argument0, argument1, argument5, 0, argument4 - (argument5 * 2), height, argument2 + argument5, argument3);
