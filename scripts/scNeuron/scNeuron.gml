// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function neuronMapSync(){

with(oNeuron){
	if(id<=other.id) continue;
	if(oNeuronMap.neuronMap[id][other.id][1]>=1) continue;
	if(oNeuronMap.neuronMap[id][other.id][0]>=syncRadius) continue;
	if((get_timer() - min(lastPulseOn,other.lastPulseOn))/1000000 >= pulseSyncBuffer) continue;
	
	if(abs(lastPulseOn - other.lastPulseOn)/1000000 < pulseSyncBuffer){
		oNeuronMap.neuronMap[id][other.id][1] = min(oNeuronMap.neuronMap[id][other.id][1]+.5,1);
		if(oNeuronMap.neuronMap[id][other.id][1]>=1){ 
			synced = true;
			other.synced = true;
		}
	}
}
}

function neuronMapSyncBothWays(){

with(oNeuron){
	var _largerID;
	var _smallerID;
	if(id=other.id) continue;
	if(id<other.id){
		_largerID = other.id;
		_smallerID = id;
	}
	else{
		_largerID = id;
		_smallerID = other.id;
	}
	if(oNeuronMap.neuronMap[_largerID][_smallerID][1]>=1) continue;
	if(oNeuronMap.neuronMap[_largerID][_smallerID][0]>=syncRadius) continue;
	if((get_timer() - min(lastPulseOn,other.lastPulseOn))/1000000 >= pulseSyncBuffer) continue;
	
	if(abs(lastPulseOn - other.lastPulseOn)/1000000 < pulseSyncBuffer){
		oNeuronMap.neuronMap[_largerID][_smallerID][1] = min(oNeuronMap.neuronMap[_largerID][_smallerID][1]+.5,1);
		if(oNeuronMap.neuronMap[_largerID][_smallerID][1]>=1){ 
			synced = true;
			other.synced = true;
		}
	}
}
}


function neuronMapSync3(){

var i = -1;

while(i<array_length(neuronMap)){
	i++;
	if(neuronMap[i][2]>=1) continue;
	if(neuronMap[i][1]>syncRadius) continue;
	
	if((abs(lastPulseOn - neuronMap[i][0].lastPulseOn))/1000000 < pulseSyncBuffer){
		neuronMap[i][2] = min(neuronMap[i][2]+0.1,1)
		if(neuronMap[i][2] >= 1) synced = true;

		with(neuronMap[i][0]){ //sync both directions
			
			var j = 0;
			while(neuronMap[j][0] != other.id){
				show_debug_message(string(neuronMap[j][0])+":"+string(other.id));
				j++
			}
			neuronMap[j][2] = other.neuronMap[i][2];

		}
	}
}

}

function neuronMapSync2(){

var i = 0;

var _neuronMap;

if(variable_instance_exists(id,"_element")){
	_neuronMap = _element[0].neuronMap;
}
else{
	_neuronMap = neuronMap;
}

while(i<array_length(_neuronMap)){
	if(_neuronMap[i][2]>=1){
		i++;
		continue;
	}
	
	if((abs(lastPulseOn - _neuronMap[i][0].lastPulseOn))/1000000 < pulseSyncBuffer && _neuronMap[i][1] <= syncRadius){
		_neuronMap[i][2] = min(_neuronMap[i][2]+0.5,1)
		if(_neuronMap[i][2] >= 1) synced = true;
		
		var _tempSync = _neuronMap[i][2];

		with(_neuronMap[i][0]){ //sync both directions
			
			var j = 0;
			while(neuronMap[j][0] != other.id){
				show_debug_message(string(neuronMap[j][0])+":"+string(other.id));
				j++
			}
			neuronMap[j][2] = _tempSync;

		}
	}
	i++;
}

if(variable_instance_exists(id,"_element")){
	 _element[0].neuronMap = _neuronMap;
}
else{
	neuronMap = _neuronMap;
}

}