/// @description

if(!global.physicsEnabled)
{
	var width = camera_get_view_width(view_camera[viewport]);
	var height = camera_get_view_height(view_camera[viewport]);
	var left = floor((xFocus - (width/2)) / gridResolution) * gridResolution;
	var top = floor((yFocus - (height/2)) / gridResolution) * gridResolution;

	// draw vertical lines

	draw_set_alpha(0.1);

	for( var xx = left ; xx <= left + width ; xx += gridResolution )
	{
		draw_line_color(xx, top, xx, top+height+gridResolution, c_white, c_white);
	}

	for( var yy = top ; yy <= top + height ; yy += gridResolution )
	{
		draw_line_color(left, yy, left+width+gridResolution, yy, c_white, c_white);
	}

	draw_set_alpha(1);
}