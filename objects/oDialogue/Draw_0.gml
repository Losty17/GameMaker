/// @description Insert description here
draw_set_color(c_ltgray)
draw_rectangle(_x, height, width, _y - 10, false)

draw_set_color(c_black)
draw_rectangle(_x + 10, height + 10, width - 10, _y - 20, false)

draw_set_font(fDialogue)
draw_set_color(c_white)
draw_text(_x + 25, height + 30, "*")

for (var i = 0; i <= array_length_1d(dialogue); i++)
{
	draw_text(_x + 55, height + 30, dialogue[i])
}


