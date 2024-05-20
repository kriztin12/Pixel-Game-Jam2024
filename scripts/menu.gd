extends Control

func _ready():
	get_tree().root.content_scale_factor = 4
	get_tree().root.content_scale_mode = Window.CONTENT_SCALE_MODE_DISABLED


func _on_play_button_pressed():
	# reset global values before start game
	Global.score = 0
	Global.ball_count = 0
	Global.player_health = 3
	Global.player_score = 0
	get_tree().change_scene_to_file("res://scenes/prologue.tscn")


func _on_options_button_2_pressed():
	get_tree().change_scene_to_file("res://scenes/options.tscn")
