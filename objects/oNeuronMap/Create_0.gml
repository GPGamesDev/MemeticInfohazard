/// @description Stores all sych data [room][larger id][smaller id][syncLevel]
// You can write your code in this editor

neuronMap[0][0][0][0] = 0;

mappedRooms[0] = false;

var i = 0;

while(i<global.roomCount){
	mappedRooms[global.roomOrder[i]] = false;
	i++;
}