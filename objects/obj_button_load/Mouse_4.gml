/// @description Insert description here
// You can write your code in this editor
with(obj_cube){
	if(image_index==1){
		if(obj_main.input_text_index.inputText!=""){
			scr_load(sector_,obj_main.input_text_index.inputText)
			show_debug_message("BUTToN_LOAD  "+string(sector_)+string(obj_main.input_text_index.inputText))
		}		 
	}
}
image_speed=0
image_index=2

