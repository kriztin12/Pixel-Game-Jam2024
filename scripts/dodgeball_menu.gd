extends Control

func _ready():
	get_tree().root.content_scale_factor = 3
	get_tree().root.content_scale_mode = Window.CONTENT_SCALE_MODE_DISABLED

func _on_button_pressed():
	# switch to the dodgeball minigame after player hits start
	get_tree().change_scene_to_file("res://scenes/dodgeball_scene.tscn")
