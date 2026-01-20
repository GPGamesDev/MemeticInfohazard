/// @description Insert description here
// You can write your code in this editor

pulseOnTime = .1; //sec
pulseOffTime = .5; //sec

pulseOffTimer = 0;
pulseOnTimer = 1;

pulseOn = false;

pulseSyncBuffer = 1.1; //sec, time after another pulse that will cause sync

lastPulseOn = 0; //the time that the pulse last turned on.  Used to determine if another pulse was soon enough to form a sync

syncRadius = 150; //the radius at which this neuron can sync.  maybe affected by powerups?

manualPulseCost = 10;

tallyEnergy = false;

if(master){
	alarm_set(pulseOnTimer,game_get_speed(gamespeed_fps*pulseOffTime));
}

neuronMap[0][0] = 0;

synced = false;