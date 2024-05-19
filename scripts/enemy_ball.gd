extends Area2D

@onready var player = get_node("/root/Dodgeball/DodgePlayer")
# get player's LastLocation
@onready var lastLocation = player.global_position
# 
@onready var direction = global_position.angle_to_point(lastLocation)

var speed = 150 

func _physics_process(delta):
	if Global.ball_count > 5:
		speed = 300
	
	if Global.ball_count >= 10:
		speed = 500
		
	if (direction != null):
		var movement_vector = Vector2.from_angle(direction) * speed * delta
		global_position += movement_vector
	
	if position.x > 200:
		queue_free()
		print('bye bye')
