/// @description Insert description here
menu_x = room_width / 2
menu_y = room_height / 1.4
button_h = 55

button[0] = "Start"
button[1] = "Options"
button[2] = "Exit"
buttons = array_length_1d(button)

menuIndex = 0
lastSelected = 0

for(var i = 0; i < buttons; i++)
{
	unfold[i] = 0	
}