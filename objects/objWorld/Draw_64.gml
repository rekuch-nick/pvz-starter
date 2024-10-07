if(cursor != noone){
	
	if(cursor.object_index == objOffer){
		
		
		
		if(inBounds(xCur, yCur)){
			//draw_set_alpha(.2);
			//draw_rectangle(lanes[0].x + xCur * tileSize, lanes[0].y + yCur * tileSize, 
			//		lanes[0].x + xCur * tileSize + 30, lanes[0].y + yCur * tileSize + 30, false);
					
			draw_set_alpha(.5);
			var s = 96;
			draw_sprite_stretched(cursor.offer.img, 0, lanes[0].x + xCur * tileSize, 
											lanes[0].y + yCur * tileSize, s, s);
		} else {
			draw_set_alpha(.2);		
			var s = 96;
			draw_sprite_stretched(cursor.offer.img, 0, mouse_x - s/2, mouse_y - s/2, s, s);
		}
		
		
		draw_set_alpha(1);
	}
	
	
}