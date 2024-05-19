extends Area2D

var sensor = 0
@onready var animation = $AnimationPlayer

func _process(delta):
	# sensor and pressed 'Good'
	if sensor == 1:
		if Input.is_action_just_pressed("ui_up"):
			## add animation here
			Global.good_up = 1
			Global.score += 10
			animation.play("Good")
			
	if sensor == 0:
		if Input.is_action_just_pressed("ui_up"):
			# add animation here
			animation.play("Bad")
			Global.score -= 5
			Global.bad = 1


func _on_idle_arrow_up_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	sensor = 1
	Global.sensor_up = 1


func _on_idle_arrow_up_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	sensor = 0
	Global.sensor_up = 0
	#Global.good_up = 0
