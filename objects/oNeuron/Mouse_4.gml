/// @description Insert description here
// You can write your code in this editor

if(master || synced) exit;
if(oEnergyController.energy < manualPulseCost) exit;

pulseOn = true;
alarm_set(pulseOffTimer, game_get_speed(gamespeed_fps)*pulseOnTime);
lastPulseOn = get_timer();

oEnergyController.energy -= manualPulseCost;

neuronMapSyncBothWays();
	