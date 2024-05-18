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

func _on_area_2d_2_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	get_tree().change_scene_to_file("res://timelines/dodgeball_timeline.tscn")
