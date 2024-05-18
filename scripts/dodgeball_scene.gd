extends Node2D

# TODO: 
# Spawn more balls!
# When ball collides with player, start timeline

var enemyBallScene = preload("res://scenes/enemy_ball.tscn")
	
func _ready():
	# resize screen
	get_tree().root.content_scale_mode = Window.CONTENT_SCALE_MODE_VIEWPORT
	
func spawn_mob():
	var enemy = enemyBallScene.instantiate()
	%MobSpawnLocation.progress_ratio = randf()
	enemy.global_position = %MobSpawnLocation.global_position
	
	add_child(enemy)
	

func _on_mob_timer_timeout():
	spawn_mob()


func _on_area_2d_2_rea_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	# add sound a 'bang'
	get_tree().change_scene_to_file("res://timelines/dodgeball_timeline.tscn")
