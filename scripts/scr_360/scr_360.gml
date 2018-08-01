
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