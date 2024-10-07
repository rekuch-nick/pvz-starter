//if(x >= other.x){
	if(other.eatTime < 1){
		if(other.ySpot == ySpot){
			hp -= other.might;
			other.eatTime = 20;
		}
	}
//}