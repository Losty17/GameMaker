/// @description Insert description here
menuMove = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)
menuIndex += menuMove

if menuIndex < 0 menuIndex = buttons - 1
if menuIndex > buttons - 1 menuIndex = 0

var i = 0;
repeat buttons
{
	if unfold[i] == 1 i++
	
	if i < buttons unfold[i] = min(1, unfold[i] + .02)
	if i + 1 < buttons unfold[i + 1] = min(1, unfold[i + 1] + .005)
}

if menuIndex != lastSelected audio_play_sound(sMenuSelect, 1, 0)

lastSelected = menuIndex