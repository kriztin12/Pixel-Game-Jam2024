extends Area2D

var travelled_distance = 0

func _physics_process(delta):
	const SPEED = 100
	const RANGE = 200
	
	position.y -= SPEED * delta
	
	travelled_distance += SPEED * delta
	
	if travelled_distance > RANGE:
		queue_free


func _on_body_entered(body):
	pass


func _on_area_entered(area):
	queue_free()
	if area.has_method("take_damage"):
		area.take_damage()
		print("hit enemy")
