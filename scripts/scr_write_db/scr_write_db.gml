var obj_=argument0;
var delete_=argument1;
var load_sector=argument2;
if(load_sector=0){
	var sect=90+obj_.alpha-obj_main.sector_r.rotation_start
	if(sect<0){
		sect=360+sect
	}
}else{
	if(load_sector==1){
		sect=45;
	}else if(load_sector==2){
		sect=125;
	}else if(load_sector==3){
		sect=200;
	}else if(load_sector==4){
		sect=300;
	}
}

var alpha_DB=0
//show_debug_message("sect "+string(sect))
var i=0
var j=0


var continue_=true
if(sect>=0&&sect<90){
	for(i=array_height_2d(ar_sector_r)-1;i>-1;i--){	
		if(obj_==ar_sector_r[i,4]){	
			if(!delete_){				
				alpha_DB=90+obj_.alpha-obj_main.sector_r.rotation_start
				obj_main.ar_sector_r[i,1]=alpha_DB			
				continue_=false
				break;
			}else{
				obj_main.ar_sector_r[i,0]=0
				obj_main.ar_sector_r[i,1]=0
				obj_main.ar_sector_r[i,2]=0
				obj_main.ar_sector_r[i,3]=0
				obj_main.ar_sector_r[i,4]=0			
				continue_=false
				break;				
			}
		}else if(obj_==ar_sector_u[i,4]){		
			obj_main.ar_sector_u[i,0]=0
			obj_main.ar_sector_u[i,1]=0
			obj_main.ar_sector_u[i,2]=0
			obj_main.ar_sector_u[i,3]=0
			obj_main.ar_sector_u[i,4]=0				
			break;
		}else if(obj_==ar_sector_l[i,4]){			
			obj_main.ar_sector_l[i,0]=0
			obj_main.ar_sector_l[i,1]=0
			obj_main.ar_sector_l[i,2]=0
			obj_main.ar_sector_l[i,3]=0
			obj_main.ar_sector_l[i,4]=0				
			break;
		}else if(obj_==ar_sector_d[i,4]){			
			obj_main.ar_sector_d[i,0]=0
			obj_main.ar_sector_d[i,1]=0
			obj_main.ar_sector_d[i,2]=0
			obj_main.ar_sector_d[i,3]=0
			obj_main.ar_sector_d[i,4]=0				
			break;
		}		
	}	
	if(continue_){
		for(i=array_height_2d(ar_sector_r)-1;i>-1;i--){
			if(ar_sector_r[i,4]==0){
				alpha_DB=90+obj_.alpha-obj_main.sector_r.rotation_start
				obj_main.ar_sector_r[i,0]=obj_.type_obj
				obj_main.ar_sector_r[i,1]=alpha_DB
				obj_main.ar_sector_r[i,2]=obj_.height_radius
				obj_main.ar_sector_r[i,3]=obj_.sprite_id
				obj_main.ar_sector_r[i,4]=obj_				
				break;
			}
		}	
	}
	
}else if(sect>=90&&sect<180){
	for(i=array_height_2d(ar_sector_u)-1;i>-1;i--){
	
		if(obj_==ar_sector_u[i,4]){			
			if(!delete_){				
					alpha_DB=90+obj_.alpha-obj_main.sector_u.rotation_start
					obj_main.ar_sector_u[i,1]=alpha_DB			
					continue_=false
					break;
				}else{
					obj_main.ar_sector_u[i,0]=0
					obj_main.ar_sector_u[i,1]=0
					obj_main.ar_sector_u[i,2]=0
					obj_main.ar_sector_u[i,3]=0
					obj_main.ar_sector_u[i,4]=0			
					continue_=false
					break;				
				}
		}else if(obj_==ar_sector_r[i,4]){		
			obj_main.ar_sector_r[i,0]=0
			obj_main.ar_sector_r[i,1]=0
			obj_main.ar_sector_r[i,2]=0
			obj_main.ar_sector_r[i,3]=0
			obj_main.ar_sector_r[i,4]=0	
			break;
		}else if(obj_==ar_sector_l[i,4]){			
			obj_main.ar_sector_l[i,0]=0
			obj_main.ar_sector_l[i,1]=0
			obj_main.ar_sector_l[i,2]=0
			obj_main.ar_sector_l[i,3]=0
			obj_main.ar_sector_l[i,4]=0	
			break;
		}else if(obj_==ar_sector_d[i,4]){			
			obj_main.ar_sector_d[i,0]=0
			obj_main.ar_sector_d[i,1]=0
			obj_main.ar_sector_d[i,2]=0
			obj_main.ar_sector_d[i,3]=0
			obj_main.ar_sector_d[i,4]=0	
			break;
		}
		
	}	
	if(continue_){
		for(i=array_height_2d(ar_sector_u)-1;i>-1;i--){
			if(ar_sector_u[i,4]==0){
				alpha_DB=90+obj_.alpha-obj_main.sector_u.rotation_start
				obj_main.ar_sector_u[i,0]=obj_.type_obj
				obj_main.ar_sector_u[i,1]=alpha_DB
				obj_main.ar_sector_u[i,2]=obj_.height_radius
				obj_main.ar_sector_u[i,3]=obj_.sprite_id
				obj_main.ar_sector_u[i,4]=obj_		
				break;
			}
		}	
	}
	
}else if(sect>=180&&sect<270){
	for(i=array_height_2d(ar_sector_l)-1;i>-1;i--){		
		if(obj_==ar_sector_l[i,4]){			
			if(!delete_){				
					alpha_DB=90+obj_.alpha-obj_main.sector_l.rotation_start
					obj_main.ar_sector_l[i,1]=alpha_DB			
					continue_=false
					break;
				}else{
					obj_main.ar_sector_l[i,0]=0
					obj_main.ar_sector_l[i,1]=0
					obj_main.ar_sector_l[i,2]=0
					obj_main.ar_sector_l[i,3]=0
					obj_main.ar_sector_l[i,4]=0			
					continue_=false
					break;				
				}
		}else if(obj_==ar_sector_r[i,4]){		
			obj_main.ar_sector_r[i,0]=0
			obj_main.ar_sector_r[i,1]=0
			obj_main.ar_sector_r[i,2]=0
			obj_main.ar_sector_r[i,3]=0
			obj_main.ar_sector_r[i,4]=0				
			break;
		}else if(obj_==ar_sector_u[i,4]){			
			obj_main.ar_sector_u[i,0]=0
			obj_main.ar_sector_u[i,1]=0
			obj_main.ar_sector_u[i,2]=0
			obj_main.ar_sector_u[i,3]=0
			obj_main.ar_sector_u[i,4]=0				
			break;
		}else if(obj_==ar_sector_d[i,4]){			
			obj_main.ar_sector_d[i,0]=0
			obj_main.ar_sector_d[i,1]=0
			obj_main.ar_sector_d[i,2]=0
			obj_main.ar_sector_d[i,3]=0
			obj_main.ar_sector_d[i,4]=0			
			break;
		}
		
	}	
	if(continue_){
		for(i=array_height_2d(ar_sector_l)-1;i>-1;i--){
			if(ar_sector_l[i,4]==0){
				alpha_DB=90+obj_.alpha-obj_main.sector_l.rotation_start
				obj_main.ar_sector_l[i,0]=obj_.type_obj
				obj_main.ar_sector_l[i,1]=alpha_DB
				obj_main.ar_sector_l[i,2]=obj_.height_radius
				obj_main.ar_sector_l[i,3]=obj_.sprite_id
				obj_main.ar_sector_l[i,4]=obj_				
				break;
			}
		}	
	}
	
}else{
		for(i=array_height_2d(ar_sector_d)-1;i>-1;i--){
		if(obj_==ar_sector_d[i,4]){			
			if(!delete_){				
					alpha_DB=90+obj_.alpha-obj_main.sector_d.rotation_start
					obj_main.ar_sector_d[i,1]=alpha_DB			
					continue_=false
					break;
				}else{
					obj_main.ar_sector_d[i,0]=0
					obj_main.ar_sector_d[i,1]=0
					obj_main.ar_sector_d[i,2]=0
					obj_main.ar_sector_d[i,3]=0
					obj_main.ar_sector_d[i,4]=0			
					continue_=false
					break;				
				}
		}else if(obj_==ar_sector_r[i,4]){		
			obj_main.ar_sector_r[i,0]=0
			obj_main.ar_sector_r[i,1]=0
			obj_main.ar_sector_r[i,2]=0
			obj_main.ar_sector_r[i,3]=0
			obj_main.ar_sector_r[i,4]=0	
		
			break;
		}else if(obj_==ar_sector_u[i,4]){			
			obj_main.ar_sector_u[i,0]=0
			obj_main.ar_sector_u[i,1]=0
			obj_main.ar_sector_u[i,2]=0
			obj_main.ar_sector_u[i,3]=0
			obj_main.ar_sector_u[i,4]=0	
		
			break;
		}else if(obj_==ar_sector_l[i,4]){			
			obj_main.ar_sector_l[i,0]=0
			obj_main.ar_sector_l[i,1]=0
			obj_main.ar_sector_l[i,2]=0
			obj_main.ar_sector_l[i,3]=0
			obj_main.ar_sector_l[i,4]=0	
		
			break;
		}
		
	}	
	if(continue_){
		for(i=array_height_2d(ar_sector_d)-1;i>-1;i--){
			if(ar_sector_d[i,4]==0){
				alpha_DB=90+obj_.alpha-obj_main.sector_d.rotation_start
				obj_main.ar_sector_d[i,0]=obj_.type_obj
				obj_main.ar_sector_d[i,1]=alpha_DB
				obj_main.ar_sector_d[i,2]=obj_.height_radius
				obj_main.ar_sector_d[i,3]=obj_.sprite_id
				obj_main.ar_sector_d[i,4]=obj_				
				break;
			}
		}	
	}
}
	