extends Node2D

# TODO: 
# Spawn more balls!
# When ball collides with player, start timeline

var enemyBallScene = preload("res://scenes/enemy_ball.tscn")
	
func _ready():
	get_tree().root.content_scale_mode = Window.CONTENT_SCALE_MODE_VIEWPORT
	$MobTimer.start()
	
func spawn_mob():
	var enemy = enemyBallScene.instantiate()
	%MobSpawnLocation.progress_ratio = randf()
	enemy.global_position = %MobSpawnLocation.global_position
	
	add_child(enemy)
	

func _on_mob_timer_timeout():
	spawn_mob()


