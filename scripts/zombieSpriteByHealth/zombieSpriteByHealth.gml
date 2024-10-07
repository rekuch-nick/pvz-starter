function zombieSpriteByHealth(){
	
	
	if(sprite_index == imgZombie && hp <= hpMax / 2){
		sprite_index = imgZombieHurt;
		instance_create_depth(x, y, depth - 1, effArmPopOff);
	}
	
	
	else if(sprite_index == imgZombieHurt && hp <= 0){
		//instance_create_depth(x, y, depth - 1, effZombieFall);
		instance_create_depth(x - 40, y, depth - 1, effHeadPopOff);
	}
	
}