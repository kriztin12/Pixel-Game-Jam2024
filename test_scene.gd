extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().root.content_scale_factor = 2
	get_tree().root.content_scale_mode = Window.CONTENT_SCALE_MODE_DISABLED
	Dialogic.start('start_scene')


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
