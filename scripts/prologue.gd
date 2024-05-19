extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().root.content_scale_factor = 2
	get_tree().root.content_scale_mode = Window.CONTENT_SCALE_MODE_DISABLED

	Dialogic.start('prologue')
	
