extends Node2D

# TODO
# end game

const ArrowLeft = preload("res://scenes/move_arrow_left.tscn")
const ArrowRight = preload("res://scenes/move_arrow_right.tscn")
const ArrowUp = preload("res://scenes/move_arrow_up.tscn")

var random = 0
var RNG = RandomNumberGenerator.new()

func _ready():
	# resize screen
	get_tree().root.content_scale_factor = 1
	get_tree().root.content_scale_mode = Window.CONTENT_SCALE_MODE_VIEWPORT
	$AudioStreamPlayer2D.play()

func _process(delta):
	$Label.text = str(Global.score)

func _on_timer_timeout():
	$Timer.start()
	RNG.randomize()
	var random_int = RNG.randi_range(1, 3)
	random = random_int
	
	# random 1 - 3
	if random == 1:
		var al = ArrowLeft.instantiate()
		get_parent().add_child(al)
		al.position = $Create/Marker2D_ArrowLeft.global_position
		
	if random == 2:
		var ar = ArrowRight.instantiate()
		get_parent().add_child(ar)
		ar.position = $Create/Marker2D_ArrowRight.global_position
		
	if random == 3:
		var au = ArrowUp.instantiate()
		get_parent().add_child(au)
		au.position = $Create/Marker2D_ArrowUp.global_position
	

func _on_song_timer_timeout():
	$AudioStreamPlayer2D.stop()
	$Timer.stop()
	get_tree().change_scene_to_file("res://scenes/after_dance.tscn")
