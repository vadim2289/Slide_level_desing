
var index_=real(argument0)


if(global.DB[# index_,0]!=0){
	global.DB[# index_,0]=0
	global.DB[# index_,1]=0
	global.DB[# index_,2]=0
	for(var pool=3;pool<43;pool+=4){	
		global.DB[# index_,pool]=0
		global.DB[# index_,pool+1]=0
		global.DB[# index_,pool+2]=0
		global.DB[# index_,pool+3]=0
	}
}
var level_data
level_data=ds_grid_write(global.DB);
var file=file_text_open_write(working_directory +"levelDB.txt");
file_text_write_string(file, level_data);
file_text_close(file);