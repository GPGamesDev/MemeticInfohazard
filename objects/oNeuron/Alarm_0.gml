/// @description Pulse Off Timer
// You can write your code in this editor

pulseOn = false;

if(master){
	alarm_set(pulseOnTimer,game_get_speed(gamespeed_fps*pulseOffTime));
}