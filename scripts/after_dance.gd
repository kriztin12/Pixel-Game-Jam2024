extends Node2D

func _ready():
	get_tree().root.content_scale_factor = 2
	get_tree().root.content_scale_mode = Window.CONTENT_SCALE_MODE_DISABLED

	Dialogic.start('after_dance')
