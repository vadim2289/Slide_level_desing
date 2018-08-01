/// @description Insert description here
// You can write your code in this editor
global.mouse_l="interface1"
global.object_mouse=id
//show_debug_message(global.object_mouse)
new_sector=instance_create_layer(mouse_x,mouse_y,"Instances",
	asset_get_index("obj_sector_"+sprite_id));
new_sector.image_xscale=0.2;
new_sector.image_yscale=0.2;
//show_debug_message(new_sector)

