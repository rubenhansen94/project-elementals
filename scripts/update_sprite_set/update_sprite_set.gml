/// Scripts update_sprite_set
// Temporary script for changing player sprite set

player_sprite_[player.move, dir.right] = sprite_set_[armor_, dir.right]
player_sprite_[player.move, dir.up] = sprite_set_[armor_, dir.up]
player_sprite_[player.move, dir.left] = sprite_set_[armor_, dir.left]
player_sprite_[player.move, dir.down] = sprite_set_[armor_, dir.down]