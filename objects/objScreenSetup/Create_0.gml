image_xscale = 4;
image_yscale = 4;

ww.state = State.setup;
action = noone;

seeds = [];
var a = 84; var b = 100;
for(var i=0; i<array_length(ww.plantsKnown); i++){
	
	if(ww.plantsKnown[i] > 0){
		seeds[array_length(seeds)] = instance_create_depth(a, b, depth - 1, objSeedPack);
		seeds[array_length(seeds) - 1].i = i;
		seeds[array_length(seeds) - 1].img = plantOffers(i).img;
		seeds[array_length(seeds) - 1].par = id;
		seeds[array_length(seeds) - 1].selected = ww.plantsEquipped[i] > 0;
	}
	
	a += 120;
	if(a > room_width - 60){
		a = 84;
		b += 150;
	}
}

buttonOK = instance_create_depth(1230, 696, depth - 1, objButton);
buttonOK.txt = "OK";
buttonOK.par = id;