extends Node

const DODGEBALL_MENU = "res://scenes/pause_menu.tscn"

func change_scene(scene_path: String):
	get_tree().change_scene_to_file(scene_path)
