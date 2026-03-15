var bar_width = 400;  
var bar_height = 30;   
var bar_x = (display_get_gui_width() - bar_width) / 2; 
var bar_y = display_get_gui_height() - 40;            

draw_set_color(c_black);
draw_rectangle(bar_x - 2, bar_y - 2, bar_x + bar_width + 2, bar_y + bar_height + 2, false);

var hp_ratio = hp / hp_max;
draw_set_color(c_red);
draw_rectangle(bar_x, bar_y, bar_x + bar_width * hp_ratio, bar_y + bar_height, false);

draw_set_color(c_white);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, true);