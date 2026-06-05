	var _guil = display_get_width();
    var _guia = display_get_height();
	var _c = c_black;
	
draw_set_color(_c);
draw_set_alpha(fade_alpha);

draw_rectangle(0, 0, _guil, _guia, false);

draw_set_alpha(1);
draw_set_color(-1);