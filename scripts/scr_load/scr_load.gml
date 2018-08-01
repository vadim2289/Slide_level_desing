var sector_=real(argument0)
var index_=real(argument1)
var j=9;
var object_loc=noone
var alpha_loc=0
var height_radius_loc=0
var sprite_id_loc=""


if(global.DB[# index_,0]!=0){
	if(sector_==1){
		obj_main.sector_r.sprite_index=asset_get_index(global.DB[# index_,0]);
		for(var pool=3;pool<43;pool+=4){			
			if(obj_main.ar_sector_r[j,4]!=0){
				instance_destroy(obj_main.ar_sector_r[j,4])
				obj_main.ar_sector_r[j,0]=0
				obj_main.ar_sector_r[j,1]=0
				obj_main.ar_sector_r[j,2]=0
				obj_main.ar_sector_r[j,3]=0
				obj_main.ar_sector_r[j,4]=0
			}
			if(global.DB[# index_,pool]!=0){				
				object_loc=asset_get_index(global.DB[# index_,pool])
				alpha_loc=global.DB[# index_,pool+1]-90+obj_main.sector_r.rotation_start
				height_radius_loc=global.DB[# index_,pool+2]
				sprite_id_loc=asset_get_index(global.DB[# index_,pool+3])					
				new_solid=instance_create_layer(global.x_+lengthdir_x(global.radius_+height_radius_loc,alpha_loc),
					global.y_+lengthdir_y(global.radius_+height_radius_loc,alpha_loc),"Instances",
					object_loc);
				new_solid.sprite_index=sprite_id_loc
				new_solid.alpha=alpha_loc
				new_solid.height_radius=height_radius_loc
				new_solid.start_alpha=alpha_loc
				new_solid.image_angle=alpha_loc-90
				obj_main.ar_sector_r[j,4]=new_solid.id
				obj_main.ar_sector_r[j,0]=global.DB[# index_,pool]
				obj_main.ar_sector_r[j,1]=global.DB[# index_,pool+1]
				obj_main.ar_sector_r[j,2]=global.DB[# index_,pool+2]
				obj_main.ar_sector_r[j,3]=global.DB[# index_,pool+3]
			}
			j--
		}			
	}else if(sector_==2){
		obj_main.sector_u.sprite_index=asset_get_index(global.DB[# index_,0]);
		for(var pool=3;pool<43;pool+=4){
			if(obj_main.ar_sector_u[j,4]!=0){
				instance_destroy(obj_main.ar_sector_u[j,4])
				obj_main.ar_sector_u[j,0]=0
				obj_main.ar_sector_u[j,1]=0
				obj_main.ar_sector_u[j,2]=0
				obj_main.ar_sector_u[j,3]=0
				obj_main.ar_sector_u[j,4]=0
			}
			if(global.DB[# index_,pool]!=0){				
				object_loc=asset_get_index(global.DB[# index_,pool])
				alpha_loc=global.DB[# index_,pool+1]-90+obj_main.sector_u.rotation_start
				height_radius_loc=global.DB[# index_,pool+2]
				sprite_id_loc=asset_get_index(global.DB[# index_,pool+3])					
				new_solid=instance_create_layer(global.x_+lengthdir_x(global.radius_+height_radius_loc,alpha_loc),
					global.y_+lengthdir_y(global.radius_+height_radius_loc,alpha_loc),"Instances",
					object_loc);
				new_solid.sprite_index=sprite_id_loc
				new_solid.alpha=alpha_loc
				new_solid.height_radius=height_radius_loc
				new_solid.start_alpha=alpha_loc
				new_solid.image_angle=alpha_loc-90
				obj_main.ar_sector_u[j,4]=new_solid.id
				obj_main.ar_sector_u[j,0]=global.DB[# index_,pool]
				obj_main.ar_sector_u[j,1]=global.DB[# index_,pool+1]
				obj_main.ar_sector_u[j,2]=global.DB[# index_,pool+2]
				obj_main.ar_sector_u[j,3]=global.DB[# index_,pool+3]
			}
			j--
		}
	}else if(sector_==3){
		obj_main.sector_l.sprite_index=asset_get_index(global.DB[# index_,0]);
		
		for(var pool=3;pool<43;pool+=4){
			if(obj_main.ar_sector_l[j,4]!=0){
				instance_destroy(obj_main.ar_sector_l[j,4])
				obj_main.ar_sector_l[j,0]=0
				obj_main.ar_sector_l[j,1]=0
				obj_main.ar_sector_l[j,2]=0
				obj_main.ar_sector_l[j,3]=0
				obj_main.ar_sector_l[j,4]=0
			}
			if(global.DB[# index_,pool]!=0){				
				object_loc=asset_get_index(global.DB[# index_,pool])
				alpha_loc=global.DB[# index_,pool+1]-90+obj_main.sector_l.rotation_start
				height_radius_loc=global.DB[# index_,pool+2]
				sprite_id_loc=asset_get_index(global.DB[# index_,pool+3])					
				new_solid=instance_create_layer(global.x_+lengthdir_x(global.radius_+height_radius_loc,alpha_loc),
					global.y_+lengthdir_y(global.radius_+height_radius_loc,alpha_loc),"Instances",
					object_loc);
				new_solid.sprite_index=sprite_id_loc
				new_solid.alpha=alpha_loc
				new_solid.height_radius=height_radius_loc
				new_solid.start_alpha=alpha_loc
				new_solid.image_angle=alpha_loc-90
				obj_main.ar_sector_l[j,4]=new_solid.id
				obj_main.ar_sector_l[j,0]=global.DB[# index_,pool]
				obj_main.ar_sector_l[j,1]=global.DB[# index_,pool+1]
				obj_main.ar_sector_l[j,2]=global.DB[# index_,pool+2]
				obj_main.ar_sector_l[j,3]=global.DB[# index_,pool+3]
			}
			j--
		}
	}else if(sector_==4){
		obj_main.sector_d.sprite_index=asset_get_index(global.DB[# index_,0]);
		
		for(var pool=3;pool<43;pool+=4){
			if(obj_main.ar_sector_d[j,4]!=0){
				instance_destroy(obj_main.ar_sector_d[j,4])
				obj_main.ar_sector_d[j,0]=0
				obj_main.ar_sector_d[j,1]=0
				obj_main.ar_sector_d[j,2]=0
				obj_main.ar_sector_d[j,3]=0
				obj_main.ar_sector_d[j,4]=0
			}
			if(global.DB[# index_,pool]!=0){				
				object_loc=asset_get_index(global.DB[# index_,pool])
				alpha_loc=global.DB[# index_,pool+1]-90+obj_main.sector_d.rotation_start
				height_radius_loc=global.DB[# index_,pool+2]
				sprite_id_loc=asset_get_index(global.DB[# index_,pool+3])					
				new_solid=instance_create_layer(global.x_+lengthdir_x(global.radius_+height_radius_loc,alpha_loc),
					global.y_+lengthdir_y(global.radius_+height_radius_loc,alpha_loc),"Instances",
					object_loc);
				new_solid.sprite_index=sprite_id_loc
				new_solid.alpha=alpha_loc
				new_solid.height_radius=height_radius_loc
				new_solid.start_alpha=alpha_loc
				new_solid.image_angle=alpha_loc-90
				obj_main.ar_sector_d[j,4]=new_solid.id
				obj_main.ar_sector_d[j,0]=global.DB[# index_,pool]
				obj_main.ar_sector_d[j,1]=global.DB[# index_,pool+1]
				obj_main.ar_sector_d[j,2]=global.DB[# index_,pool+2]
				obj_main.ar_sector_d[j,3]=global.DB[# index_,pool+3]
			}
			j--
		}
	}
		
	obj_main.input_text_numb.inputText=global.DB[# index_,1]
	obj_text.inputText=global.DB[# index_,2]
	
}

/*
var level_data
level_data=ds_grid_write(global.DB);
file=file_text_open_write(working_directory +"levelDB.txt");
file_text_write_string(file, level_data);
file_text_close(file);
*/