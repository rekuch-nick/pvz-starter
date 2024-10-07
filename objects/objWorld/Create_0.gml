game_set_speed(30, gamespeed_fps);

draw_set_font(fntPlain);

lanes = [];
state = State.title;
input();

layerBG = -1;
layerLane = -10;
layerZombie = -600;
layerPlant = -600;
bar.depth = -900;
layerTop = -999;

MAX_PLANTS = 44;
cursor = noone;
stage = 1;


for(var i=0; i<MAX_PLANTS; i++){
	plantsKnown[i] = 0;
	plantsEquipped[i] = 0;
}
plantsKnown[0] = 1; plantsKnown[1] = 1;
//plantsKnown[2] = 1; plantsKnown[3] = 1;

plantsEquipped[0] = 1; plantsEquipped[1] = 1;
plantSlots = 3;
plantSlotsUsed = 2;


instance_create_depth(0, 0, layerTop, objScreenTitle);

