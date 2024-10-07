function plantOffers(n){

	var p = {
		nam: "-",
		i: n,
		num: 0,
		numMax: 99,
		numChargeMax: 30 * 30,
		numCharge: 0,
		img: imgBlank,
		obj: objPlant,
	}
	
	if(n == 0){
		p.nam = "Sunflower";
		p.img = imgPlantSunflower;
		p.obj = pntSunflower;
		p.numCharge = 30 * 5;
		p.numChargeMax = 30 * 10;
	}
	
	if(n == 1){
		p.nam = "Pea Shooter";
		p.img = imgPlantShooter;
		p.obj = pntShooter;
		p.numChargeMax = 30 * 15;
		p.num = 99; ///
	}
	
	if(n == 2){
		p.nam = "Cherry Bomb";
		p.img = imgPlantChery;
		p.obj = pntCherry;
		p.numChargeMax = 30 * 30;
	}
	
	if(n == 3){
		p.nam = "Wall Nut";
		p.img = imgPlantWallNut;
		p.obj = pntWallnut;
		p.numChargeMax = 30 * 60;
	}
	
	
	
	
	
	return p;
}