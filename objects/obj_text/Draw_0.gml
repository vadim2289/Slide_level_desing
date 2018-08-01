/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_font(font_norm)
var text_=displayText
var text_2=""
var text_3=""
var text_4=""
if(string_length(displayText)>25&&string_length(displayText)<51){
	
	text_=string_copy(displayText,0,25)
	draw_text(x+12, y+2, text_)
	text_2=string_copy(displayText,26,string_length(displayText))
	draw_text(x+12, y+24, text_2)	
	
} else if(string_length(displayText)>50){
	text_=string_copy(displayText,0,25)
	draw_text(x+12, y+2, text_)
	text_2=string_copy(displayText,26,25)
	draw_text(x+12, y+24, text_2)
	text_3=string_copy(displayText,51,string_length(displayText))
	draw_text(x+12, y+46, text_3)	
} else{
	draw_text(x+12, y+2, displayText)	
}
