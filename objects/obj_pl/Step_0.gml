/// @description Insert description here
// You can write your code in this editor
button_key=keyboard_check_pressed(vk_up)
button_down=keyboard_check(vk_down);
key_horizon=keyboard_check(vk_right)-keyboard_check(vk_left);
/*
if(!place_meeting(global.x_+lengthdir_x(result_radius-1,alpha),global.y_+lengthdir_y(result_radius-1,alpha),obj_eath)){
	vertical_speed-=gravity_	
}
show_debug_message("firsrt "+ string(vertical_speed))
*/
vertical_speed-=gravity_	
if(button_key>0&&AI=="on_eath"){
	vertical_speed=button_key*jump_
}
if(key_horizon>0){
	horizontal_speed-=acceleration_	
	horizontal_speed=clamp(horizontal_speed,0,-speed_);	
	image_speed=2	
}else if(key_horizon<0){
	horizontal_speed+=acceleration_
	horizontal_speed=clamp(abs(horizontal_speed),0,speed_*1.5);
	image_speed=0
}else{
	horizontal_speed=lerp(horizontal_speed,0,acceleration_*1.5)
	image_speed=1
}
alpha+=horizontal_speed;
//global.Testing="radius_personaja "+ string(result_radius)
var x_future=global.x_+lengthdir_x(result_radius+vertical_speed,alpha);
var y_future=global.y_+lengthdir_y(result_radius+vertical_speed,alpha);
var x_future_1=global.x_+lengthdir_x(result_radius+sign(vertical_speed),alpha);
var y_future_1=global.y_+lengthdir_y(result_radius+sign(vertical_speed),alpha);
var result_radius_local=result_radius


//show_debug_message("!!!!!!!!!!!!"+string(button_key)+" ver "+string(vertical_speed))
if(place_meeting(x_future,y_future,obj_eath)){	
	AI="on_eath"	
	
	//Проверка коллизий при падении к центру круга и установка радиуса для координат на 1 пиксель выше коллизии		
	while !place_meeting(x_future_1,y_future_1,obj_eath){	
		result_radius=result_radius_local
		result_radius_local+=sign(vertical_speed);	
		x_future_1=global.x_+lengthdir_x(result_radius_local,alpha); 
		y_future_1=global.y_+lengthdir_y(result_radius_local,alpha);	
		
	}	
	/*if(button_key>0){
		vertical_speed=button_key*jump_
	}else{
		vertical_speed=0;
	}*/
	vertical_speed=0;
//	global.Testing="collision "+ string(vertical_speed)
	result_radius_local=result_radius;
	//Проверка коллизий при движении вправо влево и при погружении в объект более чем на 10 пикселей рестарт	
	while place_meeting(global.x_+lengthdir_x(result_radius_local,alpha),global.y_+lengthdir_y(result_radius_local,alpha),obj_eath){		
		result_radius_local+=1		
		
		if(abs(result_radius-result_radius_local)>dopusk){// если игрок проваливается в солид больше чем на 20 пикселей, то конец, если меньше, то нор, встает наверх
	//		game_restart()
				global.Testing="PROIGRAL LOPUH "
			if(!global.play_){
	
			}else{
				global.speed_=0
				global.play_=false;	
				speed_=global.speed_
			}
				
		}else{	
			//global.Testing="norm "+string(result_radius-result_radius_local)
			//result_radius=result_radius_local
		}
	}
	var inst= instance_place(x_future,y_future,obj_eath)
	//show_debug_message(object_get_name(inst.object_index))
		if(object_get_name(inst.object_index)=="obj_solid_fall"&&inst.alarm[0]<=0){
			inst.fall_=true
			show_debug_message(inst.fall_)
		}
/*	if(other.id.sprite_index==spr_solid_fall){
		other.id.fall_=true
		show_debug_message(object_get_name(other.object_index))
	}*/
	if(object_get_name(inst.object_index)!="obj_solid_fall"){
		if(result_radius_local<820){
			result_radius=725
		}else if(result_radius_local>820&&result_radius_local<920){
			result_radius=825		
		}else if(result_radius_local>920&&result_radius_local<1020){
			result_radius=925
		}else if(result_radius_local>1020&&result_radius_local<1120){
			result_radius=1025
		}else if(result_radius_local>1120&&result_radius_local<1320){
			result_radius=1125
		}
	}
}else{
	AI="jamp"	
}
if(button_down>0){
	sprite_index=spr_pld
	image_angle=alpha-90
}else {
	sprite_index=spr_pl
	image_angle=alpha-90
}



result_radius+=vertical_speed;

x=global.x_+lengthdir_x(result_radius,alpha); 
y=global.y_+lengthdir_y(result_radius,alpha);


