if(x >= other.x){
	
	if(ds_list_find_index(hitList, other) != -1){ return; }
	ds_list_add(hitList, other);
	
	other.hp -= might;
	
	if(removeOnHit){ instance_destroy(); }
}