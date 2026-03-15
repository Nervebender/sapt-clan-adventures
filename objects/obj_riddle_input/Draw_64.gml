if (riddle_active) {
    var _dx = 0;
    var _dy = gui_h * 0.7;
    var _boxw = gui_w;
    var _boxh = gui_h - _dy;

    draw_set_font(font_dialog);
    draw_sprite_stretched(spr_box, 0, _dx, _dy, _boxw, _boxh);

    _dx += 16;
    _dy += 16;

    draw_set_color(c_white);
    draw_text(_dx, _dy, "Skelettet i skogen verkar ha skrivit någon sorts gåta, men det ser ut som slumpmässiga bokstäver...");
    draw_text(_dx, _dy + 40, "uhv wlooednd wloo gbu doow ecumdgh. iduru oxudu sa vdqnw kdqv edfndu.");
    draw_text(_dx, _dy + 80, "Skriv ditt svar här> " + input_text + "|");
}