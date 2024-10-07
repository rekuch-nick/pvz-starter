function stageZombieSetup(lvl){
	time = 30;
	time = 0; ////
	zombies = 0;
	zIndex = 0;
	
	rewardIsSeed = false; rewardIndex = 0; rewardLevel = 1;
	
	if(lvl == 1){
		zAdd(objZombie, -1, 40);
		repeat(10){
			zAdd(objZombie, -1, 110);
			zAdd(objZombie, -1, 40);
			zAdd(objZombie, -1, 40);
		}
		rewardIsSeed = true; rewardIndex = 2; rewardLevel = 1;
	} else if(lvl >= 2){
		zAdd(objZombie, -1, 40);
		repeat(20){
			zAdd(objZombie, -1, 110);
			zAdd(objZombie, -1, 40);
			zAdd(objZombie, -1, 40);
			zAdd(objZombie, -1, 40);
		}
		rewardIsSeed = true; rewardIndex = 3; rewardLevel = 1;
	}
	
	
}








function zAdd(zomKind, zomRow, incr){
	if(is_undefined(incr)){
		var zomTime = time + 30;
	} else {
		var zomTime = time + incr;
	}
	
	zombies[array_length(zombies)] = {
		kind: zomKind,
		row: zomRow, 
		ms: zomTime
	}
	if(zomRow == -1){
		zombies[array_length(zombies) - 1].row = irandom_range(0, array_length(lanes) - 1);
	}
	
	time = zomTime;
}