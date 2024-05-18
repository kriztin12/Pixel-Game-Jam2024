extends Node2D

func _ready():
	# resize screen
	get_tree().root.content_scale_mode = Window.CONTENT_SCALE_MODE_VIEWPORT
