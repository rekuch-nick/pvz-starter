try{
	var i = ds_list_find_index(lane.zombies, id);
	ds_list_delete(lane.zombies, i);
} catch(e){}