/// @description

var mx = mouse_x;
var my = mouse_y;

var cx = mx div cellsize;
var cy = my div cellsize;

var xx = cx * cellsize + cellsize;
var yy = cy * cellsize + cellsize;

x = xx;
y = yy;

DrawTileTest(x, y, "T_Dungeon_Set");