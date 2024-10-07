



x += xSpeed;
y += ySpeed;
ySpeed += grav;

image_angle += rot;

image_xscale += gro;
image_yscale += gro;

if(flicker){ image_alpha = random_range(.2, 1); }

image_alpha -= fade;
timeCD --;

if(timeCD < 1){
	if(spawnOnDestroy != noone){
		instance_create_depth(x, y, depth, spawnOnDestroy);
	}
	instance_destroy();
}