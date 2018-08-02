/// @description Insert description here
// You can write your code in this editor
global.mouse_l="interface3"
global.object_mouse=id;
//show_debug_message(global.object_mouse)


if(sprite_id="spr_pie"){
	new_solid=instance_create_layer(mouse_x,mouse_y,"Instances",obj_pie);
	//new_solid.sprite_index=asset_get_index(sprite_id)
	//new_solid.height_radius=0;
	obj_canvas_solid.visible=true;
	obj_canvas_solid.sprite_index=spr_canvas_object
}else if(sprite_id="spr_saw"){
	new_solid=instance_create_layer(mouse_x,mouse_y,"Instances",obj_saw);
	//new_solid.sprite_index=asset_get_index(sprite_id)
	//new_solid.height_radius=0;
	obj_canvas_solid.visible=true;
	obj_canvas_solid.sprite_index=spr_canvas_object
	
}else if(sprite_id="spr_saw_vert"){
	new_solid=instance_create_layer(mouse_x,mouse_y,"Instances",obj_saw_vertical);
	//new_solid.sprite_index=asset_get_index(sprite_id)
	//new_solid.height_radius=0;
	obj_canvas_solid.visible=true;
	obj_canvas_solid.sprite_index=spr_canvas_object
	
}else if(sprite_id="spr_saw_hor"){
	new_solid=instance_create_layer(mouse_x,mouse_y,"Instances",obj_saw_horizon);
	//new_solid.sprite_index=asset_get_index(sprite_id)
	//new_solid.height_radius=0;
	obj_canvas_solid.visible=true;
	obj_canvas_solid.sprite_index=spr_canvas_object
	
}else if(sprite_id="spr_pie_up"){
	new_solid=instance_create_layer(mouse_x,mouse_y,"Instances",obj_pie_up);
	//new_solid.sprite_index=asset_get_index(sprite_id)
	//new_solid.height_radius=0;
	obj_canvas_solid.visible=true;
	obj_canvas_solid.sprite_index=spr_canvas_object
	
}else if(sprite_id="spr_pie_up_stand"||sprite_id="spr_pie_up_shoot"){
	new_solid=instance_create_layer(mouse_x,mouse_y,"Instances",obj_pie_up_shoot);
	//new_solid.sprite_index=asset_get_index(sprite_id)
	//new_solid.height_radius=0;
	obj_canvas_solid.visible=true;
	obj_canvas_solid.sprite_index=spr_canvas_object
	
}else if(sprite_id="spr_move_pie"){
	new_solid=instance_create_layer(mouse_x,mouse_y,"Instances",obj_move_enemy);
	//new_solid.sprite_index=asset_get_index(sprite_id)
	//new_solid.height_radius=0;
	obj_canvas_solid.visible=true;
	obj_canvas_solid.sprite_index=spr_canvas_object
	
}else if(sprite_id="spr_good"){
	new_solid=instance_create_layer(mouse_x,mouse_y,"Instances",obj_good);
	//new_solid.sprite_index=asset_get_index(sprite_id)
	//new_solid.height_radius=0;
	obj_canvas_solid.visible=true;
	obj_canvas_solid.sprite_index=spr_canvas_object
	
}else if(sprite_id="spr_bad"){
	new_solid=instance_create_layer(mouse_x,mouse_y,"Instances",obj_bad);
	//new_solid.sprite_index=asset_get_index(sprite_id)
	//new_solid.height_radius=0;
	obj_canvas_solid.visible=true;
	obj_canvas_solid.sprite_index=spr_canvas_object
	
}


//new_sector.image_xscale=0.2;
//new_sector.image_yscale=0.2;
//
