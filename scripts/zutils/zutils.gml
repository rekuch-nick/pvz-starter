function mouseIsOn(){
	return mouse_x >= x
		&& mouse_y >= y
		&& mouse_x < x + sprite_width
		&& mouse_y < y + sprite_height;
}

function print(s){
	show_debug_log(true);
	show_debug_message(s);
}

function sumOfPlantsKnown() {
	var n = 0;
	for(var i=0; i<array_length(ww.plantsKnown); i++){
		if(ww.plantsKnown[i] > 0){ n ++; }
	}
	return n;
}


function inBounds(a, b){
	return a >= 0 && b >= 0 && a < ww.W && b < ww.H;
}