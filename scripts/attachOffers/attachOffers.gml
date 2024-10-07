function attachOffers(){ 
	
	with(objOffer){ instance_destroy(); }
	with(bar){ 
	
		offers = [];
	
		var ii = 0;
		for(var i=0; i<ww.MAX_PLANTS; i++){
			if(ww.plantsEquipped[i]){
				offers[ii] = instance_create_depth(x + ii * 80, y + 10, depth - 1, objOffer);
				offers[ii].xx = ii * 120;
				offers[ii].yy = 10;
				offers[ii].offer = plantOffers(i);
				ii ++;
			}
		}

	}
}