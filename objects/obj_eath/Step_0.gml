/// @description Insert description here
// You can write your code in this editor

if(global.play_){
	rotation_start+=global.speed_;
	if(rotation_start>=360||rotation_start<=-360){
		rotation_start-=360*sign(global.speed_);	
		sector_updating=false;
	}
	if(rotation_start>300&&rotation_start<359&&!sector_updating)
	{
		sector_updating=true;
		scr_sector_update();	
	}
	image_angle=rotation_start;

}else{
	if(global.mouse_l="eath"){
		image_angle=rotation_start+global.rotation_mouse;
	}else{
		image_angle=rotation_start
	}
}


if(variable_instance_exists(id,"rotation_start")){
	if(rotation_start>=360){
		rotation_start-=360
	}else if(rotation_start<0){
		rotation_start=360+rotation_start
	}	
}
if(variable_instance_exists(id,"alpha")){
	if(alpha>=360){
		alpha-=360
		start_alpha-=360
	}else if(alpha<0){
		alpha=360+alpha
		start_alpha=360+start_alpha
	}
}