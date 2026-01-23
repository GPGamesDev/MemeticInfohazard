/// @description Insert description here
// You can write your code in this editor
var i = 0;

/*
with(oNeuron){ //old setup
	if(id == other.id) continue; //don't put yourself in the map
	other.neuronMap[i][0] = id; //neuron ID
	other.neuronMap[i][1] = point_distance(x,y,other.x,other.y); //distance to Neuron
	other.neuronMap[i][2] = 0; //sync with neuron
	
	if(other.presynced && master){
		other.neuronMap[i][2] = 1;
		other.synced = true
	}
	
	if(other.master && presynced){
		other.neuronMap[i][2] = 1;
	}
	
	i++;
}
*/
if(oNeuronMap.mappedRooms[room]){
	with(oNeuron){
		if(id<=other.id) continue;
		if(oNeuronMap.neuronMap[room][id][other.id][1] >= 1) synced = true;
	}
	exit;
}


with(oNeuron){
	if(id<=other.id) continue;
	oNeuronMap.neuronMap[room][id][other.id][0] = point_distance(x,y,other.x,other.y);
	oNeuronMap.neuronMap[room][id][other.id][1] = 0; //sync
	
	if(other.presynced && master){
		oNeuronMap.neuronMap[room][id][other.id][1] = 1;
		other.synced = true
	}
	
	if(other.master && presynced){
		oNeuronMap.neuronMap[room][id][other.id][1] = 1;
	}
}