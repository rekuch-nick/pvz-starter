function stageSetup(){
	stageMS = 0;
	
	with(objPeaShot){ instance_destroy(); }
	with(objZombie){ instance_destroy(); }
	with(objLane){ instance_destroy(); }
	lanes = [];
	for(var i=0; i<5; i++){
		lanes[i] = instance_create_depth(0, 160 + i * 120, layerLane, objLane);
		lanes[i].sprite_index = i % 2 == 0 ? imgLaneA : imgLaneB;
		lanes[i].image_xscale = 4;
		lanes[i].image_yscale = 4;
		lanes[i].x = room_width - lanes[i].sprite_width;
		lanes[i].index = i;
	}
	
	W = 9; H = 5; //max grid bounds
	tileSize = lanes[0].sprite_height;
	
	bg = instance_create_depth(0, 0, layerBG, objPic);
	bg.sprite_index = imgBG01;
	bg.image_xscale = 4;
	bg.image_yscale = 4;
	
	with(objPlant){ instance_destroy(); }
	for(var a=0; a<W; a++){ for(var b=0; b<H; b++){
		pmap[a, b] = noone;
	}}
	
	
	if(sumOfPlantsKnown() > plantSlots){
		instance_create_depth(0, 0, layerTop, objScreenSetup);
	} else {
		if(plantsKnown[2] && !plantsEquipped[2]){ plantsEquipped[2] = true; }
		attachOffers();
		
		state = State.play;
	}
	
	
	
	stageZombieSetup(stage);
	
	
	
	
	
	
	
	
	
	
	
}