extends Node2D

const ArrowLeft = preload("res://scenes/move_arrow_left.tscn")
const ArrowRight = preload("res://scenes/move_arrow_right.tscn")
const ArrowUp = preload("res://scenes/move_arrow_up.tscn")

func _ready():
	# resize screen
	get_tree().root.content_scale_mode = Window.CONTENT_SCALE_MODE_VIEWPORT
