/// @description Insert description here
// You can write your code in this editor

if(!tallyEnergy) exit;

var i = 0
var _energyDelta = 0; //*!master;

while(i<array_length(neuronMap)){
	if(neuronMap[i][2]>=1){
		_energyDelta++;
	}
	i++;
}

oEnergyController.energy += _energyDelta/2
		
tallyEnergy = false;
