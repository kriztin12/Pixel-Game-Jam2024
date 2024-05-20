extends Node2D

var enemyScene = preload("res://scenes/sea_invaders_enemy.tscn")

func _ready():
	# resize screen
	get_tree().root.content_scale_factor = 1
	get_tree().root.content_scale_mode = Window.CONTENT_SCALE_MODE_VIEWPORT

func spawn_enemy():
	var enemy = enemyScene.instantiate()
	%EnemySpawnLocation.progress_ratio = randf()
	enemy.global_position = %EnemySpawnLocation.global_position
	add_child(enemy)

func _on_enemy_spawn_timer_timeout():
	spawn_enemy()
