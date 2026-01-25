/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_pressed(mb_right)){
	lastMouseX = window_mouse_get_x();
	lastMouseY = window_mouse_get_y();
}

if(mouse_check_button(mb_right)){
	var _mouseXDelta = (window_mouse_get_x() - lastMouseX)*screenScrollSpeed;
	var _mouseYDelta = (window_mouse_get_y() - lastMouseY)*screenScrollSpeed;
	
	cameraCenter[0] += _mouseXDelta;
	cameraCenter[1] += _mouseYDelta;
	
	camera_set_view_pos(myCamera,cameraCenter[0]-cameraHalfWidth,cameraCenter[1]-cameraHalfHeight);
	
	//lastMouseX = mouse_x;
	//lastMouseY = mouse_y;
}

if(cameraHalfWidth*2>=cameraWidthMax && currentRoom < global.roomCount-1){
	lastRoom = currentRoom;
	currentRoom++;
	room_goto(global.roomOrder[currentRoom]);
}
if(cameraHalfWidth*2<=cameraWidthMin && currentRoom > 0){
	lastRoom = currentRoom;
	currentRoom--;
	room_goto(global.roomOrder[currentRoom]);
}