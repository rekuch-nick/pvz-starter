if(ww.state != State.title){ return; }

if(action != noone){
	
	
	
	
	if(action == startButton){
		instance_create_depth(sprite_width / 2, sprite_height, depth - 2, effHand);
		repeat(20){
			var a = sprite_width / 2 + irandom_range(-100, 100);
			instance_create_depth(a, sprite_height, depth - 3, effDirt);
		}
		
		
		ww.state = State.adventureInit;
		
		return;
	}
	
}