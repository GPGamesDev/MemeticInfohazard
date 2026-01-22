// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scCamera(){

}

function cameraZoom(_zoomIn){
	
	var _zoomDelta = zoomDelta;
	if(_zoomIn) _zoomDelta *= -1;
	
	var _newWidth = 2*cameraHalfWidth+_zoomDelta*aspectRatio;
	var _newHeight = 2*cameraHalfHeight+_zoomDelta;
	camera_set_view_size(myCamera,_newWidth,_newHeight);
	
	cameraHalfHeight = _newHeight/2;
	cameraHalfWidth = _newWidth/2;

	camera_set_view_pos(myCamera,cameraCenter[0]-cameraHalfWidth,cameraCenter[1]-cameraHalfHeight);
}