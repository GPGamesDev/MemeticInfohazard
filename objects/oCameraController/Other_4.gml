/// @description Insert description here
// You can write your code in this editor

myCamera = view_camera[0];
view_visible[0] = true;
view_enabled = true;

var _camWidth = cameraInitialWidth;
var _camHeight = cameraInitialHeight;
if(lastRoom>currentRoom){
	_camWidth = cameraWidthMax-5;
	_camHeight = (cameraWidthMax-5)/aspectRatio;
}
if(lastRoom<currentRoom){
	_camWidth = cameraWidthMin+5;
	_camHeight = (cameraWidthMin+5)/aspectRatio;
}

camera_set_view_size(myCamera, _camWidth, _camHeight);

cameraHalfWidth = _camWidth/2;
cameraHalfHeight = _camHeight/2;

cameraCenter = [oMasterNeuron.x, oMasterNeuron.y];

camera_set_view_pos(myCamera,cameraCenter[0]-cameraHalfWidth,cameraCenter[1]-cameraHalfHeight);