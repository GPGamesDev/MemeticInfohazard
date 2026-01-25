/// @description Insert description here
// You can write your code in this editor

energy = 0;
maxEnergy = 100;

screenWidth = display_get_gui_width();
energyHeightOffset = 10;
energyWidthOffset = 100;

energyGain = 0;

for(var i = 0; i<global.roomCount; i++){
	lastEnergyGain[global.roomOrder[i]] = 0;
}

lastEnergyGain[room] = 1;

alarm_set(0,game_get_speed(gamespeed_fps)*global.pulseOnTime);