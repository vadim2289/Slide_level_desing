/// @description Insert description here
// You can write your code in this editor

if (abs(x-x_end)<=3&&speed>0){
	if(count_stop>0){
		speed=0	
		alarm[1]=irandom(100)
	}else{
		speed=0	
		x=-20
		alarm[0]=irandom_range(3000,10000)
		count_stop=4
	}
}

if(laser){
	instance_create_layer(x,y,"Instances",obj_bullet)
	laser=false
	alarm[0]=20
	count_stop--
}