if(ww.state != State.play){ return; }




if(shot != noone){
	if(ds_list_size(ww.lanes[ySpot].zombies) > 0){
	
		shotCD --;
		if(shotCD < 1){
			shotCD = shotCDMax;
			instance_create_depth(x + shotXOffset, y + shotYOffset, depth - 1, shot);
		}
	}
}




if(hp < 1){
	ww.pmap[xSpot, ySpot] = noone;
	instance_destroy();
}