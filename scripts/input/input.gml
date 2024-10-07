function input(){
	
	clickLeft = mouse_check_button_pressed(mb_left);
	clickRight = mouse_check_button_pressed(mb_right);
	
	holdLeft = mouse_check_button(mb_left);
	holdRight = mouse_check_button(mb_right);
	
	xCur = -1; yCur = -1;
	if(array_length(lanes) > 0){
		var aa = mouse_x - lanes[0].x;
		var bb = mouse_y - lanes[0].y;
		var w = lanes[0].sprite_height;
		xCur = floor(aa / w);
		yCur = floor(bb / w);
	}
}