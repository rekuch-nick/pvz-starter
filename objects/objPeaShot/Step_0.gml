if(ww.state != State.play){ return; }

x += moveSpeed;

if(x > room_width + sprite_width){
	instance_destroy();
}