/// @description

// Update the window relative mouse positions

windowMouseX = mouse_x - camera_get_view_x(view_camera[viewport]);
windowMouseY = mouse_y - camera_get_view_y(view_camera[viewport]);

// right mouse-drag camera move

if(!bDragging)
{
	// NOT dragging
	if(mouse_check_button_pressed(mb_right))
	{
		bDragging = true;
		startDragMouseX = windowMouseX;
		startDragMouseY = windowMouseY;
		startDragCameraX = xFocus;
		startDragCameraY = yFocus;
	}
}
else
{
	// dragging
	if(mouse_check_button(mb_right))
	{
		// dragging is being held
		xFocus = startDragCameraX - (windowMouseX - startDragMouseX);
		yFocus = startDragCameraY - (windowMouseY - startDragMouseY);
	}
	else
	{
		// drag has been released
		bDragging = false;
	}
}
	

// process zoom

if(mouse_wheel_down())
{
	zoom = zoom * 1.1;
}
if(mouse_wheel_up())
{
	zoom = zoom * 0.9;
}
zoom = clamp(zoom, 0.25, 4.0);

// set viewport

var width = 320 * zoom;
var height = 180 * zoom;

// Set camera to viewport bounds

camera_set_view_pos(view_camera[viewport], xFocus - (width / 2), yFocus - (height / 2));
camera_set_view_size(view_camera[viewport], width, height);
