/// @description Insert description here
// You can write your code in this edi
draw_set_font(font_norm)
if(instance_exists(global.object_mouse)){
	if variable_instance_exists(global.object_mouse,"alpha"){
		draw_text(1840,300,global.object_mouse.alpha)
	}
}
draw_text(1840,250,"fps"+string(fps))

draw_text(1300,240,"dir_ "+string(filename_dir("levelDB.txt")))
//draw_text(1540,350,"testing: "+string(global.Testing))
draw_text(1840,270,string(mouse_x)+":"+string(mouse_y))
draw_set_font(font_name)
draw_text(50,5,"Choose your platforms, Motherfucker")
draw_text(50,240,"Choose your objects, Motherfucker")
draw_text(1520,5,"Choose your piece of cake, Motherfucker")
draw_set_font(font_number_sector)
draw_text(global.x_+lengthdir_x(global.radius_/1.2,sector_r.image_angle-45),
		  global.y_+lengthdir_y(global.radius_/1.2,sector_r.image_angle-45),
		  string(1));
		  
draw_text(global.x_+lengthdir_x(global.radius_/1.2,sector_u.image_angle-45),
		  global.y_+lengthdir_y(global.radius_/1.2,sector_u.image_angle-45),
		  string(2));
		  
draw_text(global.x_+lengthdir_x(global.radius_/1.2,sector_l.image_angle-45),
		  global.y_+lengthdir_y(global.radius_/1.2,sector_l.image_angle-45),
		  string(3));
		  
draw_text(global.x_+lengthdir_x(global.radius_/1.2,sector_d.image_angle-45),
		  global.y_+lengthdir_y(global.radius_/1.2,sector_d.image_angle-45),
		  string(4));
draw_set_font(font_min_sec)
draw_text(550,5,"Sector 1")
draw_text(750,5,"Sector 2")
draw_text(950,5,"Sector 3")
draw_text(1150,5,"Sector 4")
draw_set_font(font_min)
for(var i=9;i>-1;i--){	
	
	var string_ar_r=string(ar_sector_r[i,0])+" "+
					string(ar_sector_r[i,1])+" "+
					string(ar_sector_r[i,2])+" "+
					string(ar_sector_r[i,3])+" "+
					string(ar_sector_r[i,4])	
	var string_ar_u=string(ar_sector_u[i,0])+" "+
					string(ar_sector_u[i,1])+" "+
					string(ar_sector_u[i,2])+" "+
					string(ar_sector_u[i,3])+" "+
					string(ar_sector_u[i,4])	
		
	var string_ar_l=string(ar_sector_l[i,0])+" "+
					string(ar_sector_l[i,1])+" "+
					string(ar_sector_l[i,2])+" "+
					string(ar_sector_l[i,3])+" "+
					string(ar_sector_l[i,4])	
	
	var string_ar_d=string(ar_sector_d[i,0])+" "+
					string(ar_sector_d[i,1])+" "+
					string(ar_sector_d[i,2])+" "+
					string(ar_sector_d[i,3])+" "+
					string(ar_sector_d[i,4])	
		

	draw_text(550,20+i*12,string_ar_r)	
	
	
	draw_text(750,20+i*12,string_ar_u)
	
	
	draw_text(950,20+i*12,string_ar_l)
	
	
	draw_text(1150,20+i*12,string_ar_d)
		
}	  


//
if(global.draw_){
	global.draw_=false
	var stroka="56X4X677X9"
	range_=scr_random_range(stroka);
}
//dr//textbox_name
draw_set_font(font_norm)
draw_text(550,154,"Start number of sector")
draw_text(730,154,"End numbers of sector(1x2x4...)")
