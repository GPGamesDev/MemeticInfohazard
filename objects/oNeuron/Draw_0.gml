/// @description Insert description here
// You can write your code in this editor

image_index = pulseOn;
draw_self();

if(!synced){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(x,y,string(manualPulseCost),2,2,0);
}

if(mouseOver) draw_circle(x,y,syncRadius,true);

with(oNeuron){
	if(id<=other.id) continue;
	var _sync = oNeuronMap.neuronMap[room][id][other.id][1]
	if(_sync == 0) continue;
	
	var _lineColor = c_red;
	if(_sync>=1){
		_lineColor = c_green;
	}
	draw_line_width_colour(x,y,other.x,other.y,10*_sync,_lineColor,_lineColor);
}

/*
var i = 0;

while(i<array_length(neuronMap)){
	var _lineColor = c_red;
	if(neuronMap[i][2]>=1){
		_lineColor = c_green;
	}
	draw_line_width_colour(x,y,neuronMap[i][0].x,neuronMap[i][0].y,10*neuronMap[i][2],_lineColor,_lineColor);
	i++;
}
*/

