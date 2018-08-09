/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/*
// копирование области грида в новый с новым размером
ds_grid_add_grid_region(global.DB1,global.DB,0,0,99,43,0,0)
// и сохранение
var level_data
show_debug_message(ds_grid_width(global.DB1))
level_data=ds_grid_write(global.DB1);
file=file_text_open_write(working_directory +"levelDB.txt");
file_text_write_string(file, level_data);
file_text_close(file);
*/
//show_debug_message(global.mouse_l)
if(global.mouse_l=="eath"){
	global.mouse_l="";
	global.rotation_mouse=0
	global.draw_=true
	//show_debug_message("alpha_solid = "+string(global.object_mouse.alpha))
	with(obj_eath){
		rotation_start=image_angle;		
	}
	with(obj_solid){
		start_alpha=image_angle+90
		//image_angle=alpha
		
	}
	with(obj_solid_fall){
		start_alpha=image_angle+90
		//image_angle=alpha
		
	}
	with(obj_pie){
		start_alpha=image_angle+90
		//image_angle=alpha
	}
	with(obj_saw){
		start_alpha=image_angle+90
		//image_angle=alpha
	}
	with(obj_saw_vertical){
		start_alpha=image_angle+90
		//image_angle=alpha
	}
	with(obj_saw_horizon){
		start_alpha=image_angle+90
		//image_angle=alpha
	}
	
	with(obj_pie_up){
		start_alpha=image_angle+90
		//image_angle=alpha
	}
	with(obj_pie_up_shoot){
		start_alpha=image_angle+90
		//image_angle=alpha
	}
	with(obj_move_enemy){
		start_alpha=image_angle+90
		//image_angle=alpha
	}
	with(obj_line){
		rotation_start=image_angle
		//image_angle=alpha
	}with(obj_good){
		start_alpha=image_angle+90
		//image_angle=alpha
	}
	with(obj_bad){
		start_alpha=image_angle+90
		//image_angle=alpha
	}
	//scr_360(global.object_mouse)
}
if(global.mouse_l=="solid"){
	
		//show_debug_message("alpha_solid = "+string(global.object_mouse.alpha))
		global.mouse_l=""
		global.rotation_mouse=0
		global.draw_=true
		with(global.object_mouse){		
			start_alpha=image_angle+90
		}
	
	scr_write_db(global.object_mouse,false,0)
}
if(global.mouse_l=="interface1"){		
	if(position_meeting(global.object_mouse.new_sector.x,global.object_mouse.new_sector.y,obj_eath)){
		var inst=instance_position(mouse_x, mouse_y, obj_eath)
		//show_debug_message(global.object_mouse)
		inst.sprite_index=global.object_mouse.new_sector.sprite_index
		instance_destroy(global.object_mouse.new_sector);		
	}else{
		instance_destroy(global.object_mouse.new_sector);		
	}	
	//show_debug_message("alpha_solid = "+string(global.object_mouse.alpha))
	global.mouse_l="";	
	global.object_mouse=noone;
}
if(global.mouse_l=="interface2"){	
	
	if(position_meeting(global.object_mouse.new_solid.x,global.object_mouse.new_solid.y,obj_canvas_solid)){
		//var inst=instance_position(mouse_x, mouse_y, obj_canvas_solid)
		//show_debug_message(global.object_mouse.new_solid.height_radius)		
		//inst.sprite_index=global.object_mouse.new_solid.sprite_index
		
		if(global.object_mouse.new_solid.type_obj=="obj_solid_fall"){
			//show_debug_message(global.object_mouse)
			global.object_mouse.new_solid.height_radius=abs(point_distance(mouse_x,mouse_y,global.x_,global.y_))-825
		}
		global.object_mouse.new_solid.start_alpha=point_direction(global.x_,global.y_,mouse_x,mouse_y)
		global.object_mouse.new_solid.alpha=global.object_mouse.new_solid.start_alpha
		global.object_mouse.new_solid.image_angle=global.object_mouse.new_solid.alpha-90
		global.object_mouse.new_solid.x=global.x_+lengthdir_x(global.radius_+global.object_mouse.new_solid.height_radius,global.object_mouse.new_solid.alpha); 
		global.object_mouse.new_solid.y=global.y_+lengthdir_y(global.radius_+global.object_mouse.new_solid.height_radius,global.object_mouse.new_solid.alpha);
		scr_write_db(global.object_mouse.new_solid,false,0)
		//instance_destroy(global.object_mouse.new_sector);		
	}else{
		instance_destroy(global.object_mouse.new_solid);		
	}	
	//show_debug_message("alpha_solid = "+string(global.object_mouse.new_solid.alpha))
	
	obj_canvas_solid.visible=false;
	global.mouse_l="";	
	global.object_mouse.new_solid=noone;
	global.object_mouse=noone;
	
	
}
if(global.mouse_l=="interface3"){	
	
	if(position_meeting(global.object_mouse.new_solid.x,global.object_mouse.new_solid.y,obj_canvas_solid)){
		//var inst=instance_position(mouse_x, mouse_y, obj_canvas_solid)
		if(global.object_mouse.new_solid.type_obj="obj_pie_up"||global.object_mouse.new_solid.type_obj="obj_pie_up_shoot"){
			if(point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_>-100&&point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_<0){
				global.object_mouse.new_solid.height_radius=0;
			}else if(point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_>0&&point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_<100){
				global.object_mouse.new_solid.height_radius=100;
			}else if(point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_>100&&point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_<200){
				global.object_mouse.new_solid.height_radius=200;
			}else{
				global.object_mouse.new_solid.height_radius=300;
			}
		}else{
			if(point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_>-100&&point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_<0){
				global.object_mouse.new_solid.height_radius=-100;
			}else if(point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_>0&&point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_<100){
			global.object_mouse.new_solid.height_radius=0;
			}else if(point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_>100&&point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_<200){
				global.object_mouse.new_solid.height_radius=100;
			}else if(point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_>200&&point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_<300){
				global.object_mouse.new_solid.height_radius=200;
			}else{
				global.object_mouse.new_solid.height_radius=300;
			}
		}/*
		if(point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_>0&&point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_<100){
			global.object_mouse.new_solid.height_radius=0;
		}else if(point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_>100&&point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_<200){
			global.object_mouse.new_solid.height_radius=100;
		}else if(point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_>200&&point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_<300){
			global.object_mouse.new_solid.height_radius=200;
		}else{
			global.object_mouse.new_solid.height_radius=300;
		}*/
		//global.object_mouse.new_solid.height_radius=point_distance(mouse_x,mouse_y,global.x_,global.y_)-global.radius_
		//inst.sprite_index=global.object_mouse.new_solid.sprite_index
		global.object_mouse.new_solid.start_alpha=point_direction(global.x_,global.y_,mouse_x,mouse_y)
		global.object_mouse.new_solid.alpha=global.object_mouse.new_solid.start_alpha
		global.object_mouse.new_solid.image_angle=global.object_mouse.new_solid.alpha-90
		
		global.object_mouse.new_solid.x=global.x_+lengthdir_x(global.radius_+global.object_mouse.new_solid.height_radius,global.object_mouse.new_solid.alpha); 
		global.object_mouse.new_solid.y=global.y_+lengthdir_y(global.radius_+global.object_mouse.new_solid.height_radius,global.object_mouse.new_solid.alpha);
		
		with (obj_eath){
			if(depth<=global.object_mouse.new_solid.depth){
				global.object_mouse.new_solid.depth=depth-10
			}
			//show_debug_message(string(global.object_mouse.new_solid.id)+"_____"+string(global.object_mouse.new_solid.depth))
		}
		scr_write_db(global.object_mouse.new_solid,false,0)
		//instance_destroy(global.object_mouse.new_sector);		
	}else{
		instance_destroy(global.object_mouse.new_solid);		
	}	
	//show_debug_message("alpha_solid = "+string(global.object_mouse.new_solid.alpha))
	
	obj_canvas_solid.visible=false;
	global.mouse_l="";	
	global.object_mouse.new_solid=noone;
	global.object_mouse=noone;
	
	
}


