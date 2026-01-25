/// @description Insert description here
// You can write your code in this editor

alarm_set(0,game_get_speed(gamespeed_fps)*global.pulseOnTime);
oMasterNeuron.pulsePing = true;

for(var i = 0; i<global.roomCount; i++){
	energy += lastEnergyGain[global.roomOrder[i]];
}