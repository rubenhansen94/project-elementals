///@arg input-direction

var _input_direction =  argument0;

direction_facing_ = round(_input_direction/90);
if direction_facing_ == 4 { direction_facing_ = 0; }