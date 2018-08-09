



var sector_=argument0;

var number_start=argument1;

var number_end=argument2;
var i=9;
var j=4;

if(sector_==1){
	sector_=sprite_get_name(obj_main.sector_r.sprite_index);
	repeat 10{
		repeat 5{
			obj_main.ar_sector_local[i,j]=obj_main.ar_sector_r[i,j]
			j--
		}
		i--
		j=4
	}

}else if(sector_==2){
	sector_=sprite_get_name(obj_main.sector_u.sprite_index);
	repeat 10{
		repeat 5{
			obj_main.ar_sector_local[i,j]=obj_main.ar_sector_u[i,j]
			j--
		}
		i--
		j=4
	}

}else if(sector_==3){
	sector_=sprite_get_name(obj_main.sector_l.sprite_index);
	repeat 10{
		repeat 5{
			obj_main.ar_sector_local[i,j]=obj_main.ar_sector_l[i,j]
			j--
		}
		i--
		j=4
	}

}else if(sector_==4){
	sector_=sprite_get_name(obj_main.sector_d.sprite_index);
	repeat 10{
		repeat 5{
			obj_main.ar_sector_local[i,j]=obj_main.ar_sector_d[i,j]
			j--
		}
		i--
		j=4
		}

}


var i=0;
var j=9;
for(i=0;i<200;i++){
	if(global.DB[# i,0]==0){
		global.DB[# i,0]=sector_
		global.DB[# i,1]=number_start
		global.DB[# i,2]=number_end
		show_debug_message(string(i)+string(global.DB[# i,0])+"  "+string(global.DB[# i,1])+"   "+
			string(global.DB[# i,2])+" \\  ")
			global.msg2=show_message("Record number "+string(i)+ " is done")
		for(var pool=3;pool<43;pool+=4){
			global.DB[# i,pool]=obj_main.ar_sector_local[j,0]
			global.DB[# i,pool+1]=obj_main.ar_sector_local[j,1]
			global.DB[# i,pool+2]=obj_main.ar_sector_local[j,2]
			global.DB[# i,pool+3]=obj_main.ar_sector_local[j,3]
			show_debug_message(string(global.DB[# i,pool])+"  "+
			string(global.DB[# i,pool+1])+"  "+
			string(global.DB[# i,pool+2])+"  "+
			string(global.DB[# i,pool+3])+" || ")
			j--
		}
		break;		
	}
}

var level_data
level_data=ds_grid_write(global.DB);
file=file_text_open_write(working_directory +"levelDB.txt");
file_text_write_string(file, level_data);
file_text_close(file);


