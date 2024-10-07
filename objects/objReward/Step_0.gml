if(ww.state != State.won){ return; }


if(ww.clickLeft && mouseIsOn()){
	if(isSeed){
		ww.plantsKnown[seedIndex] = seedLevel;
	}
	
	instance_destroy();
	
}