extends Area2D

var speed = 60.0

func _physics_process(delta):
	if Global.player_score >= 250:
		speed = 80
	global_position.y += speed * delta

func take_damage():
	Global.player_score += 20
	queue_free()

