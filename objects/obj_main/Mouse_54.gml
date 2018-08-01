/// @description Insert description here
// You can write your code in this editor
if(instance_exists(global.object_mouse)){
	scr_write_db(global.object_mouse,true,0)
	instance_destroy(global.object_mouse)
}