if(ww.state != State.play){ return; }

if(stunTime > 0){
	stunTime --;
} else if(eatTime > 0){
	eatTime --;
} else {
	x -= moveSpeed;
	if(x < -100){ hp = 0; } ////

	if(y > lane.y + foot){ y --; }
	if(y < lane.y + foot){ y ++; }
}






zombieSpriteByHealth();


if(hp <= 0){
	
	instance_destroy();
}