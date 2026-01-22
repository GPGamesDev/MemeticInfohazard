/// @description Insert description here
// You can write your code in this editor

myCamera = view_camera[0];

var _camWidth = camera_get_view_width(myCamera);
var _camHeight = camera_get_view_height(myCamera);
cameraHalfWidth = _camWidth/2;
cameraHalfHeight = _camHeight/2;
aspectRatio = _camWidth/_camHeight;

cameraCenter = [oMasterNeuron.x, oMasterNeuron.y];

camera_set_view_pos(myCamera,cameraCenter[0]-cameraHalfWidth,cameraCenter[1]-cameraHalfHeight);

zoomDelta = 5;

lastMouseX = mouse_x;
lastMouseY = mouse_y;
screenScrollSpeed = .01;