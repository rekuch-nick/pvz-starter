var a = irandom_range(0, room_width);
var b = irandom_range(0, room_height);
if(choose(true, false)){
	a = choose(0, room_width);
} else {
	b = choose(0, room_height);
}
var c = choose(c_red, c_yellow, c_lime, c_aqua);
draw_line_color(x+sprite_width/2, y+sprite_height/2, a, b, c, c);
draw_line_color(x+sprite_width/2, y+sprite_height/2, a+1, b+1, c, c);
draw_line_color(x+sprite_width/2, y+sprite_height/2, a-1, b-1, c, c);


draw_self();
draw_sprite_stretched(img, 0, x + 8, y + 16, 96, 96);
