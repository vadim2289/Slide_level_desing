/// @description Insert description here
// You can write your code in this editor

if(global.play_){
	rotation_start+=global.speed_;
	if(rotation_start>=360||rotation_start<=-360){
		rotation_start-=360*sign(global.speed_);	
	}
	image_angle=rotation_start;

}else{
	if(global.mouse_l="eath"){
		image_angle=rotation_start+global.rotation_mouse;
	}else{
		image_angle=rotation_start
	}
}

scr_360()