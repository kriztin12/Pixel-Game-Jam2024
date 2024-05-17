extends Area2D

@onready var player = get_node("/root/Dodgeball/DodgePlayer")
# get player's LastLocation
@onready var lastLocation = player.global_position
# 
@onready var direction = global_position.angle_to_point(lastLocation)

func _physics_process(delta):
	#
	if (direction != null):
		var movement_vector = Vector2.from_angle(direction) * 150 * delta
		global_position += movement_vector

