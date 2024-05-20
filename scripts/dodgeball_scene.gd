extends Node2D

var enemyBallScene = preload("res://scenes/enemy_ball.tscn")
var count = 0

func _ready():
	# resize screen
	get_tree().root.content_scale_factor = 1
	get_tree().root.content_scale_mode = Window.CONTENT_SCALE_MODE_VIEWPORT
	
func spawn_mob():
	var enemy = enemyBallScene.instantiate()
	%MobSpawnLocation.progress_ratio = randf()
	enemy.global_position = %MobSpawnLocation.global_position
	
	add_child(enemy)
	

func _on_mob_timer_timeout():
	spawn_mob()
	Global.ball_count += 1
	if Global.ball_count > 5:
		spawn_mob()

