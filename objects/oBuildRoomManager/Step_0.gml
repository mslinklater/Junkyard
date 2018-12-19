/// @description

// temp code - spawn object on mouse click
if(!global.physicsEnabled)
{
	if(mouse_check_button_pressed(mb_left))
	{
		var xpos = floor(mouse_x / gridResolution) * gridResolution;
		var ypos = floor(mouse_y / gridResolution) * gridResolution;

		instance_create_layer(xpos, ypos, "Instances", oPartSimple);
	}
}

// Simulation toggle

if(keyboard_check_pressed(vk_space))
{
	scrSetSimulation(!global.physicsEnabled);
}