extends Area2D

const SPEED = 50.0

func _physics_process(delta):
	global_position.y += SPEED * delta

func take_damage():
	queue_free()
	print("Test Enemy Take Damage")
