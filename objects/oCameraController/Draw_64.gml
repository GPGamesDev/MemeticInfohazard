/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(10,10,"Width: " + string(cameraHalfWidth*2) + "; Height: " + string(cameraHalfHeight*2));

var _fade = 0;

if(cameraHalfWidth*2>cameraWidthMax-fadeBuffer){
	_fade = 1-(cameraWidthMax-cameraHalfWidth*2)/fadeBuffer;
}
if(cameraHalfWidth*2<cameraWidthMin+fadeBuffer){
	_fade = 1-(cameraHalfWidth*2-cameraWidthMin)/fadeBuffer;
}
draw_set_alpha(_fade);
draw_rectangle(0,0,display_get_gui_width(), display_get_gui_height(),false);


draw_set_alpha(1);