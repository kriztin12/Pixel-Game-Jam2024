extends Node2D

func _process(delta):
	if Global.good_up == 1:
		$AnimationPlayer.play("dance_up")
		Global.good_up = 0
	if Global.good_left == 1:
		$AnimationPlayer.play("dance_left")
		Global.good_left = 0
	if Global.good_right == 1:
		$AnimationPlayer.play("dance_right")
		Global.good_right = 0
	if Global.bad == 1:
		$AnimationPlayer.play("dance_wrong")
		Global.bad = 0
