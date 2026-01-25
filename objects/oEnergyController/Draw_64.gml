/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(screenWidth-energyWidthOffset,energyHeightOffset,"Energy: "+string(energy));
draw_text(screenWidth-energyWidthOffset*3,energyHeightOffset*3,"Energy Gain: "+string(lastEnergyGain));