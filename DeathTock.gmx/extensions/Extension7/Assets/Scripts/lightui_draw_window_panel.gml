///lightui_draw_window_panel(sprite,subimg,border,x,y,width,height)

// Somewhat messy due to primitives not working in HTML5

var bordersize = argument2 / sprite_get_width(argument0);
var sprite_w = sprite_get_width(argument0);
var sprite_h = sprite_get_height(argument0);
var subimage = argument1;
var width = argument5;
var height = argument6;
var border = argument2;
var x1 = argument3;
var y1 = argument4;

// Top left corner
draw_sprite_part(argument0, 0, 0, 0, border, border, x1, y1);

// Top right corner
draw_sprite_part(argument0, 0, sprite_w - border, 0, border, border, x1 + width - border, y1);

// Bottom left corner
draw_sprite_part(argument0, 0, 0, sprite_h - border, border, border, x1, y1 + height - border);

// Bottom right corner
draw_sprite_part(argument0, 0, sprite_w - border, sprite_h - border, border, border, x1 + width - border, y1 + height - border);

// Draw white panels
draw_set_color(c_white);
draw_rectangle(x1, y1 + border, x1 + width - 1, y1 + height - border, false);
draw_rectangle(x1 + border, y1, x1 + width - 1 - border, y1 + height - 6, false);

// Draw blue panels
draw_set_color(make_colour_rgb(40, 174, 204));
draw_rectangle(x1 + 10, y1 + border, x1 + width - 11, y1 + height - border, false);
draw_rectangle(x1 + border, y1 + 10, x1 + width - 1 - border, y1 + height - 16, false);

// Messy bottom shadow hack
shadow_width = width - (border * 2);
start_x = x1 + border;
start_y = y1 + height - 6;
grab_width = 90;
for(iteration = 0; iteration < shadow_width / grab_width; iteration += 1)
{
    sample_width = grab_width;
    if(grab_width + start_x + (iteration * grab_width) > x1 + width - border)
    {
        sample_width =  (x1 + width - border) - (start_x + (iteration * grab_width));
    }
    draw_sprite_part(argument0, 0, 30, sprite_h - 6, sample_width, 6, start_x + (iteration * grab_width), start_y);
}