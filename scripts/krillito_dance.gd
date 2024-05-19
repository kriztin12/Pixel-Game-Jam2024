extends Node2D

@onready var animation = $AnimationPlayer

func _process(delta):
	if Global.sensor_up == 1:
		$AnimationPlayer.play("DanceUp")
	if Global.sensor_left == 1:
		$AnimationPlayer.play("DanceLeft")
	if Global.sensor_right == 1:
		$AnimationPlayer.play("DanceRight")
