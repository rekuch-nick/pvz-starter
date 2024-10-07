draw_self();

if(offer.num < 1){ draw_set_alpha(.4); }
draw_sprite_stretched(offer.img, 0, x + 8, y, 96, 96);
draw_set_alpha(1);

var w = sprite_width * (offer.numCharge / offer.numChargeMax);
var b = y + sprite_height + 8;
draw_rectangle_color(x, b, x + sprite_width, b + 4, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
draw_rectangle(x, b, x + w, b + 4, false);

draw_set_halign(fa_center);
draw_text(x + sprite_width/2, y + sprite_height - 32, offer.num);
draw_set_halign(fa_left);