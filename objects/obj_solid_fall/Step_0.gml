/// @description Insert description here
// You can write your code in this editor
//scr_move_round()
//show_debug_message(alarm[0])
if(global.play_){	
	alpha+=global.speed_+speed_	
	image_angle=alpha-90
	start_alpha=image_angle+90
	if(fall_){
		alarm[0]=time_
		fall_=false
		sprite_index=spr_solid_fall_true
		image_index=0
		image_speed=0
	}
	
	if(alarm[0]<time_*0.8&&alarm[0]>time_*0.6){
		image_index=1
		image_speed=0
	}
	if(alarm[0]<time_*0.6&&alarm[0]>time_*0.4){
		image_index=2
		image_speed=0
	}
	if(alarm[0]<time_*0.4&&alarm[0]>time_*0.2){
		image_index=3
		image_speed=0
	}
	if(alarm[0]<time_*0.2&&alarm[0]>0){
		image_index=4
		image_speed=0
	}
}else{
	if(global.mouse_l=="eath"){			
		alpha=start_alpha+global.rotation_mouse
		image_angle=alpha-90
	}else if(global.mouse_l=="solid"){	
		if(global.object_mouse==id){
			alpha=start_alpha+global.rotation_mouse
			image_angle=alpha-90
		}
	}	
}
x=global.x_+lengthdir_x(global.radius_+height_radius,alpha); 
y=global.y_+lengthdir_y(global.radius_+height_radius,alpha);

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