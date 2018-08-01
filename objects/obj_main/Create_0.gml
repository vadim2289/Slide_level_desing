/// @description Create_game
// You can write your code in this editor
global.radius_=825;
global.x_=room_width/2;
global.y_=room_height+415;
global.speed_=0;
global.sector_numb=0;
global.max_=3;
global.rotation_mouse=0;
global.DB=ds_grid_create(100,43)
global.mouse_start_x=0;
global.mouse_start_y=0
global.mouse_l=""
global.object_mouse=noone
global.play_=false
global.draw_=false
global.msg=0;
global.msg2=0;
global.Testing=0
range_=0

if (file_exists(working_directory +"levelDB.txt")){
	var file=file_text_open_read(working_directory +"levelDB.txt");
	var string_end=file_text_read_string(file);
	ds_grid_read(global.DB,string_end)
	file_text_close(file);
}


var i=9;
var j=4;
repeat 10{
	repeat 5{
		ar_sector_r[i,j]=0
		ar_sector_u[i,j]=0
		ar_sector_l[i,j]=0
		ar_sector_d[i,j]=0
		j--
	}
	i--
	j=4
}
var i=9;
var j=4;
repeat 10{
	repeat 5{
		ar_sector_local[i,j]=0
		ar_sector_local[i,j]=0
		ar_sector_local[i,j]=0
		ar_sector_local[i,j]=0
		j--
	}
	i--
	j=4
}
 // new_meteor=instance_create_layer(0,0,"Instances",obj_meteor)
//	instance_create_layer(-10,-20,"Instances",obj_ufo)
//interface sectors
inter_sec_circle_F=instance_create_layer(1550,32,"Instances",obj_sector_inter);
inter_sec_circle_F.sprite_index=circle_F
inter_sec_circle_F.sprite_id="circle_F"
inter_sec_circle_F.new_sector=noone;
inter_sec_circle_L=instance_create_layer(1650,32,"Instances",obj_sector_inter);
inter_sec_circle_L.sprite_index=circle_L
inter_sec_circle_L.sprite_id="circle_L"
inter_sec_circle_L.new_sector=noone;
inter_sec_circle_R=instance_create_layer(1750,32,"Instances",obj_sector_inter);
inter_sec_circle_R.sprite_index=circle_R
inter_sec_circle_R.sprite_id="circle_R"
inter_sec_circle_R.new_sector=noone;
inter_sec_circle_LR=instance_create_layer(1550,92,"Instances",obj_sector_inter);
inter_sec_circle_LR.sprite_index=circle_LR
inter_sec_circle_LR.sprite_id="circle_LR"
inter_sec_circle_LR.new_sector=noone;
inter_sec_circle_C=instance_create_layer(1650,92,"Instances",obj_sector_inter);
inter_sec_circle_C.sprite_index=circle_C
inter_sec_circle_C.sprite_id="circle_C"
inter_sec_circle_C.new_sector=noone;
inter_sec_circle_E=instance_create_layer(1750,92,"Instances",obj_sector_inter);
inter_sec_circle_E.sprite_index=circle_E
inter_sec_circle_E.sprite_id="circle_E"
inter_sec_circle_E.new_sector=noone;
inter_sec_circle_LL=instance_create_layer(1550,152,"Instances",obj_sector_inter);
inter_sec_circle_LL.sprite_index=circle_LL
inter_sec_circle_LL.sprite_id="circle_LL"
inter_sec_circle_LL.new_sector=noone;
inter_sec_circle_RR=instance_create_layer(1650,152,"Instances",obj_sector_inter);
inter_sec_circle_RR.sprite_index=circle_RR
inter_sec_circle_RR.sprite_id="circle_RR"
inter_sec_circle_RR.new_sector=noone;


//interface solid 1
inter_solid_1=instance_create_layer(40,40,"Instances",obj_solid_interface);
inter_solid_1.sprite_index=spr_solid1
inter_solid_1.sprite_id="spr_solid1"
inter_solid_1.image_xscale=0.1
inter_solid_1.image_yscale=0.1
inter_solid_1.new_solid=noone;

inter_solid_1_2=instance_create_layer(150,40,"Instances",obj_solid_interface);
inter_solid_1_2.sprite_index=spr_solid1_2
inter_solid_1_2.sprite_id="spr_solid1_2"
inter_solid_1_2.image_xscale=0.1
inter_solid_1_2.image_yscale=0.1
inter_solid_1_2.new_solid=noone;


inter_solid_1_3=instance_create_layer(260,40,"Instances",obj_solid_interface);
inter_solid_1_3.sprite_index=spr_solid1_3
inter_solid_1_3.sprite_id="spr_solid1_3"
inter_solid_1_3.image_xscale=0.1
inter_solid_1_3.image_yscale=0.1
inter_solid_1_3.new_solid=noone;

inter_solid_1_4=instance_create_layer(370,40,"Instances",obj_solid_interface);
inter_solid_1_4.sprite_index=spr_solid1_4
inter_solid_1_4.sprite_id="spr_solid1_4"
inter_solid_1_4.image_xscale=0.1
inter_solid_1_4.image_yscale=0.1
inter_solid_1_4.new_solid=noone;

inter_solid_1_5=instance_create_layer(480,40,"Instances",obj_solid_interface);
inter_solid_1_5.sprite_index=spr_solid1_5
inter_solid_1_5.sprite_id="spr_solid1_5"
inter_solid_1_5.image_xscale=0.1
inter_solid_1_5.image_yscale=0.1
inter_solid_1_5.new_solid=noone;



//interface solid 2
inter_solid_2=instance_create_layer(40,100,"Instances",obj_solid_interface);
inter_solid_2.sprite_index=spr_solid2
inter_solid_2.sprite_id="spr_solid2"
inter_solid_2.image_xscale=0.1
inter_solid_2.image_yscale=0.1
inter_solid_2.new_solid=noone;

inter_solid_2_2=instance_create_layer(150,100,"Instances",obj_solid_interface);
inter_solid_2_2.sprite_index=spr_solid2_2
inter_solid_2_2.sprite_id="spr_solid2_2"
inter_solid_2_2.image_xscale=0.1
inter_solid_2_2.image_yscale=0.1
inter_solid_2_2.new_solid=noone;

inter_solid_2_3=instance_create_layer(260,100,"Instances",obj_solid_interface);
inter_solid_2_3.sprite_index=spr_solid2_3
inter_solid_2_3.sprite_id="spr_solid2_3"
inter_solid_2_3.image_xscale=0.1
inter_solid_2_3.image_yscale=0.1
inter_solid_2_3.new_solid=noone;


inter_solid_2_4=instance_create_layer(370,100,"Instances",obj_solid_interface);
inter_solid_2_4.sprite_index=spr_solid2_4
inter_solid_2_4.sprite_id="spr_solid2_4"
inter_solid_2_4.image_xscale=0.1
inter_solid_2_4.image_yscale=0.1
inter_solid_2_4.new_solid=noone;


inter_solid_2_5=instance_create_layer(480,100,"Instances",obj_solid_interface);
inter_solid_2_5.sprite_index=spr_solid2_5
inter_solid_2_5.sprite_id="spr_solid2_5"
inter_solid_2_5.image_xscale=0.1
inter_solid_2_5.image_yscale=0.1
inter_solid_2_5.new_solid=noone;


//interface solid 3
inter_solid_3=instance_create_layer(40,160,"Instances",obj_solid_interface);
inter_solid_3.sprite_index=spr_solid3
inter_solid_3.sprite_id="spr_solid3"
inter_solid_3.image_xscale=0.1
inter_solid_3.image_yscale=0.1
inter_solid_3.new_solid=noone;

inter_solid_3_2=instance_create_layer(150,160,"Instances",obj_solid_interface);
inter_solid_3_2.sprite_index=spr_solid3_2
inter_solid_3_2.sprite_id="spr_solid3_2"
inter_solid_3_2.image_xscale=0.1
inter_solid_3_2.image_yscale=0.1
inter_solid_3_2.new_solid=noone;

inter_solid_3_3=instance_create_layer(260,160,"Instances",obj_solid_interface);
inter_solid_3_3.sprite_index=spr_solid3_3
inter_solid_3_3.sprite_id="spr_solid3_3"
inter_solid_3_3.image_xscale=0.1
inter_solid_3_3.image_yscale=0.1
inter_solid_3_3.new_solid=noone;

inter_solid_3_4=instance_create_layer(370,160,"Instances",obj_solid_interface);
inter_solid_3_4.sprite_index=spr_solid3_4
inter_solid_3_4.sprite_id="spr_solid3_4"
inter_solid_3_4.image_xscale=0.1
inter_solid_3_4.image_yscale=0.1
inter_solid_3_4.new_solid=noone;

inter_solid_3_5=instance_create_layer(480,160,"Instances",obj_solid_interface);
inter_solid_3_5.sprite_index=spr_solid3_5
inter_solid_3_5.sprite_id="spr_solid3_5"
inter_solid_3_5.image_xscale=0.1
inter_solid_3_5.image_yscale=0.1
inter_solid_3_5.new_solid=noone;

//interface object
inter_object=instance_create_layer(50,320,"Instances",obj_object_interface);
inter_object.sprite_index=spr_pie
inter_object.sprite_id="spr_pie"
inter_object.image_xscale=0.6
inter_object.image_yscale=0.6
inter_object.new_solid=noone;

inter_object_2=instance_create_layer(150,290,"Instances",obj_object_interface);
inter_object_2.sprite_index=spr_saw
inter_object_2.sprite_id="spr_saw"
inter_object_2.image_xscale=0.6
inter_object_2.image_yscale=0.6
inter_object_2.new_solid=noone;

inter_object_3=instance_create_layer(250,290,"Instances",obj_object_interface);
inter_object_3.sprite_index=spr_pie_up
inter_object_3.sprite_id="spr_pie_up"
inter_object_3.image_xscale=0.6
inter_object_3.image_yscale=0.6
inter_object_3.new_solid=noone;


inter_object_4=instance_create_layer(350,290,"Instances",obj_object_interface);
inter_object_4.sprite_index=spr_pie_up_stand
inter_object_4.sprite_id="spr_pie_up_stand"
inter_object_4.image_xscale=0.6
inter_object_4.image_yscale=0.6
inter_object_4.new_solid=noone;

inter_object_5=instance_create_layer(450,320,"Instances",obj_object_interface);
inter_object_5.sprite_index=spr_move_pie
inter_object_5.sprite_id="spr_move_pie"
inter_object_5.image_xscale=0.6
inter_object_5.image_yscale=0.6
inter_object_5.new_solid=noone;


//cube

c1=instance_create_layer(550,3,"Instances",obj_cube);
c1.sector_=1
c2=instance_create_layer(750,3,"Instances",obj_cube);
c2.sector_=2
c2.sprite_index=spr_cube2
c3=instance_create_layer(950,3,"Instances",obj_cube);
c3.sector_=3
c4=instance_create_layer(1150,3,"Instances",obj_cube);
c4.sector_=4
c4.sprite_index=spr_cube2


//input text
input_text_numb = instance_create_layer(570,175,"Instances",obj_number_upper);
input_text_index = instance_create_layer(1100,175,"Instances",obj_number_upper);
input_text_start = instance_create_layer(720,175,"Instances",obj_text);
save_button=instance_create_layer(1000,190,"Instances",obj_button_save);
load_button=instance_create_layer(1200,190,"Instances",obj_button_load);
del_button=instance_create_layer(1300,190,"Instances",obj_button_delete);


//var DB=ds_grid_create(10,10)
instance_create_layer(global.x_,global.y_-global.radius_-150,"Instances",obj_pl);

//instance_create_layer(global.x_,global.y_-global.radius_,"Instances",obj_pie);
//wall1=instance_create_layer(global.x_,global.y_-global.radius_,"Instances",obj_wall);
//wall2=instance_create_layer(global.x_,global.y_-global.radius_+100,"Instances",obj_wall);
//wall2.hight_radius=-300
//instance_create_layer(global.x_,global.y_-global.radius_,"Instances",obj_solid);
//wall22=instance_create_layer(global.x_,global.y_-global.radius_,"Instances",obj_solid);
//wall22.height_radius=155
//wall22.alpha=270

//линии
new_line=instance_create_layer(global.x_,global.y_,"Instances",obj_line)
new_line.rotation_start=-90;

new_line1=instance_create_layer(global.x_,global.y_,"Instances",obj_line)
new_line1.rotation_start=-45;

new_line2=instance_create_layer(global.x_,global.y_,"Instances",obj_line)
new_line2.rotation_start=0;

new_line3=instance_create_layer(global.x_,global.y_,"Instances",obj_line)
new_line3.rotation_start=45;

new_line4=instance_create_layer(global.x_,global.y_,"Instances",obj_line)
new_line4.rotation_start=90;

new_line5=instance_create_layer(global.x_,global.y_,"Instances",obj_line)
new_line5.rotation_start=135;

new_line6=instance_create_layer(global.x_,global.y_,"Instances",obj_line)
new_line6.rotation_start=180;

new_line7=instance_create_layer(global.x_,global.y_,"Instances",obj_line)
new_line7.rotation_start=225;

//секторы объекты
sector_r=instance_create_layer(global.x_,global.y_,"Instances",obj_eath); // правая точка
sector_r.rotation_start=90;
sector_r.sprite_index=0;
sector_r.sector_id=0

sector_u=instance_create_layer(global.x_,global.y_,"Instances",obj_eath); // верхнаяя точка
sector_u.rotation_start=180;
sector_u.sprite_index=1;
sector_u.sector_id=1

sector_l=instance_create_layer(global.x_,global.y_,"Instances",obj_eath); // левая точка
sector_l.rotation_start=270;
sector_l.sprite_index=0;
sector_l.sector_id=0

sector_d=instance_create_layer(global.x_,global.y_,"Instances",obj_eath); // нижняя точка
sector_d.rotation_start=0;
sector_d.sprite_index=1;
sector_d.sector_id=1

canvas_solid=instance_create_layer(global.x_,global.y_,"Instances",obj_canvas_solid)

array_1[27]=0;
array_2[27]=0;
array_3[27]=0;
array_4[27]=0;


