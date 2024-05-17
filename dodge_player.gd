extends CharacterBody2D

var lastLocation = Vector2.ZERO

func _process(delta):
	# Update last location in every frame
	lastLocation = global_position

func _physics_process(delta):
	# grab player input
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 100
	move_and_slide()
