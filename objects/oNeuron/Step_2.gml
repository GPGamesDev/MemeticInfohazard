/// @description Insert description here
// You can write your code in this editor

if(!tallyEnergy) exit;

var i = 0
var _energyDelta = 0;

with(oNeuron){
	if(id<=other.id) continue;
	var _sync = oNeuronMap.neuronMap[room][id][other.id][1];
	
	if (_sync >= 1) _energyDelta++;
}

/*
while(i<array_length(neuronMap)){
	if(neuronMap[i][2]>=1){
		_energyDelta++;
	}
	i++;
}
*/

oEnergyController.energyGain += _energyDelta;
		
tallyEnergy = false;
