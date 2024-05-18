extends Area2D

var sensor = 0

func _process(delta):
	# sensor and pressed 'Good'
	if sensor == 1:
		if Input.is_action_just_pressed("ui_right"):
			## add animation here
			print("good")
	
	if sensor == 0:
		if Input.is_action_just_pressed("ui_right"):
			# add animation here
			print("bad")

func _on_idle_arrow_right_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	sensor = 1
	Global.sensor_right = 1

func _on_idle_arrow_right_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	sensor = 0
	Global.sensor_right = 0
