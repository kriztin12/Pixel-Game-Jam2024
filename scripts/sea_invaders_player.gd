extends Area2D

const SPEED = 100.0
var can_shoot = true
var input_vector = Vector2.ZERO

func _physics_process(delta):
	# grab player input
	input_vector.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	global_position += input_vector * SPEED * delta
	
	if Input.is_action_just_pressed("shoot") and can_shoot:
		shoot()
		$ShootCooldownTimer.start()
		can_shoot = false
	
func shoot():
	const PROJECTILE = preload("res://scenes/sea_invaders_projectile.tscn")
	var new_projectile = PROJECTILE.instantiate()
	%ShootingPoint.add_child(new_projectile)
	new_projectile.global_position = %ShootingPoint.global_position
	
func _on_shoot_cooldown_timer_timeout():
	can_shoot = true


#func _on_area_2d_2_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	#get_tree().change_scene_to_file("res://timelines/dodgeball_timeline.tscn")

func _on_area_entered(area):
	area.queue_free()
	player_damage()

func player_damage():
	Global.player_health -= 1
	print(Global.player_health)
	if Global.player_health == 0:
		get_tree().change_scene_to_file("res://timelines/dodgeball_timeline.tscn")
