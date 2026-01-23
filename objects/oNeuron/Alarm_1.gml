/// @description Pulse On Timer - master only
// You can write your code in this editor

pulseOn = true;
alarm_set(pulseOffTimer, game_get_speed(gamespeed_fps)*pulseOnTime);
lastPulseOn = get_timer();
tallyEnergy = true;

var _pulseSynced = function(_element, _index){
	show_debug_message(_element[2]);
	if(_element[2] >= 1 || _element[0].synced){
		show_debug_message(_element[0].identifier);
		_element[0].pulseOn = true;
		_element[0].alarm[pulseOffTimer] = game_get_speed(gamespeed_fps)*pulseOnTime;
		_element[0].lastPulseOn = get_timer();
		_element[0].tallyEnergy = true;
		
		//oEnergyController.energy += 1;
	}
}
//array_foreach(neuronMap,_pulseSynced);

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
	
	if(oNeuronMap.neuronMap[room][_largerID][_smallerID][1] >= 1 || synced){
		pulseOn = true;
		alarm[pulseOffTime] = game_get_speed(gamespeed_fps)*pulseOnTime;
		lastPulseOn = get_timer();
		tallyEnergy = true;
	}
	
	if(pulseOn) neuronMapSync();
}