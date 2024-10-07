draw_self();

if(eatTime > 0 && eatTime % 2 != 0){
	draw_set_halign(fa_center);
	draw_text(x, y - sprite_height / 2, "YUM");
	draw_set_halign(fa_left);
}