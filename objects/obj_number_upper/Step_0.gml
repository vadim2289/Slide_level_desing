/// @description Insert description here
// You can write your code in this editor
/// Input
// Variables
if(mouse_click){
	var ctext = ""

	// Clipboard
	if(keyboard_check(vk_control) && keyboard_check(ord("V")) && clipboard_has_text())
	{ ctext = clipboard_get_text() }
	if(ctext!="" && (keyboard_check_pressed(ord("V")) || keyboard_check_pressed(vk_control)))
	{ inputText = string_insert(ctext, inputText, cursorPos) }

	// Backspace
	if(keyboard_check_pressed(vk_backspace)&&cursorPos>1)
	{
	      inputText = string_delete(inputText, cursorPos-1, 1)
	      //inputTimer = inputWait
	      cursorPos-=1
	}
	if(keyboard_string != "")
	{
		if(!keyboard_check(vk_space)&&string_length(inputText)<3){			
			var t = keyboard_string;
			var code_= keyboard_key
			for (var i=0;i<=9;i++){
				if(t==string(i)){					
					inputText = string_insert(t, inputText, cursorPos)
					cursorPos+=string_length(t)
					keyboard_string = ""					
					break;
				}else{
					//show_debug_message(t)
					keyboard_string = ""
				}
			}	
		}else{
			keyboard_string = ""
		}
	}

	// Cursor
	if(keyboard_check_pressed(vk_left)&&cursorPos>1){ cursorPos-=1 }
	if(keyboard_check_pressed(vk_right)&&cursorPos<=string_length(inputText)){ cursorPos+=1 }
}

displayText = string_insert("|", inputText, cursorPos)
