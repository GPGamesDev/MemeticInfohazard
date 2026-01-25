/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(!pulsePing) exit;

pulseOn = true;
alarm_set(pulseOffTimer, game_get_speed(gamespeed_fps)*pulseOnTime);
lastPulseOn = get_timer();
tallyEnergy = true;

audio_play_sound(soNeuronBlip,90,false);

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

pulsePing = false;