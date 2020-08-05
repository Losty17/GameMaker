/// @description Insert description here
audio_play_sound(sMenuConfirm, 1, 0)
switch menuIndex
{
	case 0:
		create_transition(rLevel01)
		break
		
	case 2:
		game_end()
		break
}