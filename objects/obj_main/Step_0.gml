/// @description global step
// You can write your code in this editor
//show_debug_message("wall1  "+string(wall1.enable))
//show_debug_message("wall2222  "+string(wall2.enable))
if(global.mouse_l=="eath"||global.mouse_l=="solid"){
	global.rotation_mouse = point_direction(mouse_x,mouse_y,global.mouse_start_x,global.y_)-270 
}

if(global.msg){
	scr_delete_DB(input_text_index.inputText);	
	global.msg=false;		
}else if(global.msg2){
	scr_delete_massive()
	global.msg2=false;	
	with(obj_cube){
		if(image_index==1){
			if(sector_==1){				
				other.sector_r.sprite_index=other.sector_r.sector_id		
			}else if(sector_==2){				
				other.sector_u.sprite_index=other.sector_u.sector_id		
			}else if(sector_==3){			
				other.sector_l.sprite_index=other.sector_l.sector_id		
			}else if(sector_==4){
				other.sector_d.sprite_index=other.sector_d.sector_id				
			}	
		}
	}
	
}
