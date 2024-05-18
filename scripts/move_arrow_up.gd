extends Area2D

var speed = 50
var sensor = 0

func _ready():
	pass

func _process(delta):
	# move
	position.y -= speed * delta
	
	# screen exited
	if position.y < -50:
		queue_free()
		print('bye bye')
	
	# sensor and pressed
	if sensor == 1:
		if Global.sensor_up == 1:
			if Input.is_action_just_pressed("ui_up"):
				queue_free()
				

func _on_move_arrow_up_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	sensor = 1

func _on_move_arrow_up_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	sensor = 0
