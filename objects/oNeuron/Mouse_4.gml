/// @description Insert description here
// You can write your code in this editor

if(master || synced) exit;
if(oEnergyController.energy < manualPulseCost) exit;

pulseOn = true;
alarm_set(pulseOffTimer, game_get_speed(gamespeed_fps)*pulseOnTime);
lastPulseOn = get_timer();

oEnergyController.energy -= manualPulseCost;

var i = 0;

while(i<array_length(neuronMap)){
	if((lastPulseOn - neuronMap[i][0].lastPulseOn)/1000000 < pulseSyncBuffer && neuronMap[i][1] <= syncRadius){
		neuronMap[i][2] = min(neuronMap[i][2]+0.5,1)
		if(neuronMap[i][2] >= 1) synced = true;

		with(neuronMap[i][0]){
			
			var j = 0;
			while(neuronMap[j][0] != other.id){
				show_debug_message(string(neuronMap[j][0])+":"+string(other.id));
				j++
			}
			neuronMap[j][2] = other.neuronMap[i][2];

		}
	}
	i++;
}
	