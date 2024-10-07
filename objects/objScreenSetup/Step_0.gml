if(ww.state != State.setup){ return; }




if(action != noone){
	
	if(action == buttonOK){
		ww.state = State.play;
		with(objButton){ instance_destroy(); }
		action = noone;
		attachOffers();
		instance_destroy();
		return;
	}
	
	//var selectedAlready = array_con
	if(action.selected){
		action.selected = false;
		ww.plantsEquipped[action.i] = false;
		ww.plantSlotsUsed --;
	} else if(ww.plantSlotsUsed < ww.plantSlots){
		action.selected = true;
		ww.plantsEquipped[action.i] = true;
		ww.plantSlotsUsed ++;
	}
	
	
	action = noone;
	
}
