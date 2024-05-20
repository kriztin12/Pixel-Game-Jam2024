extends Node2D

var enemyScene = preload("res://scenes/sea_invaders_enemy.tscn")
@onready var player = get_node("SeaInvadersPlayer")

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

func _process(delta):
	match Global.player_health:
		3:
			$HealthSprite.texture = preload("res://sprites/sea_invaders_sprites/heart_three.png")
		2:
			$HealthSprite.texture = preload("res://sprites/sea_invaders_sprites/heart_two.png")
		1:
			$HealthSprite.texture = preload("res://sprites/sea_invaders_sprites/heart_one.png")
			
	%ScoreLabel.text = str(Global.player_score)


func _on_enemy_death_zone_area_entered(area):
	area.queue_free()
	player.player_damage()
	
