/// @description Insert description here
// You can write your code in this editor


if(global.play_||global.mouse_l==""){	
	alpha+=global.speed_	
	image_angle=alpha-90
	start_alpha=image_angle+90
	alpha_little_radius=alpha+12*sin(alpha/7) // horizon
	//alpha_little_radius=alpha// horizon
	//rad_=50*sin(alpha/4)
	
	x=global.x_+lengthdir_x(global.radius_+height_radius,alpha_little_radius);
	y=global.y_+lengthdir_y(global.radius_+height_radius,alpha_little_radius);
}else{
	if(global.mouse_l=="eath"){			
		alpha=start_alpha+global.rotation_mouse
		
		//alpha_little_radius
		image_angle=alpha-90
	}else if(global.mouse_l=="solid"){	
		if(global.object_mouse==id){
			alpha=start_alpha+global.rotation_mouse
			image_angle=alpha-90
		}
	}	
	
	

x=global.x_+lengthdir_x(100,alpha);
y=global.y_+lengthdir_y(100,alpha);
}


scr_360()


