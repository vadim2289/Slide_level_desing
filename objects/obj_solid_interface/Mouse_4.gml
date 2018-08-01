/// @description Insert description here
// You can write your code in this editor
global.mouse_l="interface2"
global.object_mouse=id;
//show_debug_message(global.object_mouse)
new_solid=instance_create_layer(mouse_x,mouse_y,"Instances",obj_solid);
new_solid.sprite_index=asset_get_index(sprite_id)

if(sprite_id="spr_solid1"||sprite_id="spr_solid1_2"||sprite_id="spr_solid1_3"||sprite_id="spr_solid1_4"||sprite_id="spr_solid1_5"){
	new_solid.height_radius=0;
	new_solid.type_obj="obj_solid";
	new_solid.sprite_id=sprite_id;
	obj_canvas_solid.visible=true;
	obj_canvas_solid.sprite_index=spr_canv_1
}else if(sprite_id="spr_solid2"||sprite_id="spr_solid2_2"||sprite_id="spr_solid2_3"||sprite_id="spr_solid2_4"||sprite_id="spr_solid2_5"){
	new_solid.height_radius=100;
	new_solid.type_obj="obj_solid";
	new_solid.sprite_id=sprite_id;
	obj_canvas_solid.visible=true;
	obj_canvas_solid.sprite_index=spr_canv_2
}else{
	new_solid.height_radius=200;
	new_solid.type_obj="obj_solid";
	new_solid.sprite_id=sprite_id;
	obj_canvas_solid.visible=true;
	obj_canvas_solid.sprite_index=spr_canv_3
}
//new_sector.image_xscale=0.2;
//new_sector.image_yscale=0.2;
//
