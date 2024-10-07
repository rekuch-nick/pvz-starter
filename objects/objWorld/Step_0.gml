input();


if(state == State.adventureInit){
	if(instance_number(objEffectTransition) < 1){
		with(objButton){ instance_destroy(); }
		with(objScreenTitle){ instance_destroy(); }
		stageSetup();
		
		
		return;
	}
}


if(state == State.won){ if(instance_number(objReward) < 1){
	stage ++;
	stageSetup();
	return;
}}

if(state != State.play){ return; }
stageMS ++;

if(zIndex < array_length(zombies)){
	if(stageMS >= zombies[zIndex].ms){
		var r = lanes[zombies[zIndex].row];
		var bb = zombies[zIndex].row;
		var z = instance_create_depth(r.x + r.sprite_width, r.y + tileSize / 2, 
					layerZombie - bb, zombies[zIndex].kind);
		z.lane = r;
		z.ySpot = bb;
		ds_list_add(z.lane.zombies, z);
		zIndex ++;
	}
} else if(instance_number(objZombie) < 1){
	//stage won!
	state = State.won;
	cursor = noone;
	if(rewardIsSeed){
		var s = instance_create_depth(room_width / 2, room_height / 2, layerTop, objReward);
		s.isSeed = true;
		s.seedLevel = rewardLevel;
		s.seedIndex = rewardIndex;
		s.seed = plantOffers(rewardIndex);
		s.img = s.seed.img;
	}
	
}



// income / charge plants
sun = instance_number(pntSunflower);
with(objOffer){
	if(offer.num < offer.numMax){
		offer.numCharge += 1;
		offer.numCharge += (other.sun * .2);
		if(offer.numCharge >= offer.numChargeMax){
			offer.numCharge = 0;
			offer.num ++;
		}
	} else {
		offer.numCharge = 0;
	}
}

//player actions

if(cursor != noone && cursor.object_index == objOffer){
	if(clickRight){
		cursor = noone;
		return;
	}
	
	if(clickLeft){
		if(inBounds(xCur, yCur)){
			if(pmap[xCur, yCur] == noone){
				cursor.offer.num --;
				pmap[xCur, yCur] = instance_create_depth(lanes[0].x + xCur * tileSize + tileSize / 2,
							lanes[0].y + yCur * tileSize + tileSize / 2,
							layerPlant - yCur, cursor.offer.obj);
				pmap[xCur, yCur].xSpot = xCur;
				pmap[xCur, yCur].ySpot = yCur;
				
				if(cursor.offer.num < 1){ cursor = noone; }
				return;
			}
		}
	}
}






