if(ww.state != State.play){ return; }



shouldExpand = ww.cursor == noone && mouseIsOn();

	
if(shouldExpand){
	y = clamp(y + moveSpeed, yStart, 0);
	
} else {
	y = yStart;
}

with(objOffer){
	x = xx + other.x;
	y = yy + other.y;
}