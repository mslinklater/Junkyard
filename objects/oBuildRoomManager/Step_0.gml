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
	
	// clear the area
	if(keyboard_check_pressed(ord("C")))
	{
		// delete all objects which are based on the oPartRoot
		instance_destroy(oPartRoot);
	}
}

// Simulation toggle

if(keyboard_check_pressed(vk_space))
{
	scrSetSimulation(!global.physicsEnabled);
}

