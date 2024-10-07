draw_self();
//var a = x - sprite_width / 2 + 8;
//var b = y - sprite_height / 2 + 16;
draw_sprite_stretched(img, 0, x + 8, y + 16, 96, 96);


if(selected){
	draw_set_color(c_yellow);
	draw_set_alpha(.4);
	draw_rectangle(x - 1, y - 1, x + sprite_width, y + sprite_height, false);
	draw_set_color(c_white);
	draw_set_alpha(1);
}