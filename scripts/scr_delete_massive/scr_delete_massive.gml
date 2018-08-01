with(obj_cube){
	if(image_index==1){
		if(sector_==1){
			for(var i=9;i>=0;i--){	
				if(obj_main.ar_sector_r[i,0]!=0){
						instance_destroy(obj_main.ar_sector_r[i,4])
				}
				for(var j=4;j>=0;j--){					
					obj_main.ar_sector_r[i,j]=0
				}
			}
		}else if(sector_==2){
			for(var i=9;i>=0;i--){	
				if(obj_main.ar_sector_u[i,4]!=0){
						instance_destroy(obj_main.ar_sector_u[i,4])
				}
				for(var j=4;j>=0;j--){					
					obj_main.ar_sector_u[i,j]=0
				}
			}
		}else if(sector_==3){
			for(var i=9;i>=0;i--){	
				if(obj_main.ar_sector_l[i,0]!=0){
						instance_destroy(obj_main.ar_sector_l[i,4])
				}
				for(var j=4;j>=0;j--){					
					obj_main.ar_sector_l[i,j]=0
				}
			}
		}else{
			for(var i=9;i>=0;i--){	
				if(obj_main.ar_sector_d[i,0]!=0){
						instance_destroy(obj_main.ar_sector_d[i,4])
				}
				for(var j=4;j>=0;j--){
					obj_main.ar_sector_d[i,j]=0
				}
			}
		}		
	}
}
