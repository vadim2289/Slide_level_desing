/// @description Insert description here
// You can write your code in this editor
if(!global.play_){
	global.speed_=0.3
	global.play_=true;
	obj_pl.speed_=global.speed_
	
}else{
	global.speed_=0
	global.play_=false;	
	obj_pl.speed_=global.speed_
}
/*
var level_data

show_debug_message(ds_grid_width(global.DB1))
level_data=ds_grid_write(global.DB1);
file=file_text_open_write(working_directory +"levelDB.txt");
file_text_write_string(file, level_data);
file_text_close(file);