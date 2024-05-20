extends Area2D

const SPEED = 50.0

func _physics_process(delta):
	global_position.y += SPEED * delta

func take_damage():
	Global.player_score += 20
	print(Global.player_score)
	queue_free()
