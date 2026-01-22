/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(!synced || upgradeApplied) exit;

with(oNeuron){
	manualPulseCost = floor(manualPulseCost * other.costReduction);
}

upgradeApplied = true;