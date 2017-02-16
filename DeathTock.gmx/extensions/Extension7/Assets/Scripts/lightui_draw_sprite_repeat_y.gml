///lightui_draw_sprite_repeat_y(sprite,subimage,x,y,draw_height,border)

height = sprite_get_height(argument0);
width = sprite_get_width(argument0);

// Draw top
draw_sprite_part(argument0, argument1, 0, 0, width, argument5, argument2, argument3);

// Draw bottom
draw_sprite_part(argument0, argument1, 0, height - argument5, width, argument5, argument2, argument3 + argument4 - argument5);

// Draw middle
draw_sprite_part(argument0, argument1, 0, argument5, width, argument4 - (argument5 * 2), argument2, argument3 + argument5);