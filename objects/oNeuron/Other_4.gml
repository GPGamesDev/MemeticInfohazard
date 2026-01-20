/// @description Insert description here
// You can write your code in this editor
var i = 0;

with(oNeuron){
	if(id == other.id) continue;
	other.neuronMap[i][0] = id; //neuron ID
	other.neuronMap[i][1] = distance_to_point(other.x,other.y); //distance to Neuron
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