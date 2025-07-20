
var hovered = position_meeting(mouse_x, mouse_y, id);
draw_set_font(font_start_menu);

    if (hovered) {
    draw_set_color(c_black);
    } else {
    draw_set_color(c_white);
    }

    draw_text(x, y, "QUIT");


