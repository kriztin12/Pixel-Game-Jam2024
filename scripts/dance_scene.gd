extends Node2D

# TODO
# score
# end game
# song

const ArrowLeft = preload("res://scenes/move_arrow_left.tscn")
const ArrowRight = preload("res://scenes/move_arrow_right.tscn")
const ArrowUp = preload("res://scenes/move_arrow_up.tscn")

var random = 0
var RNG = RandomNumberGenerator.new()

func _ready():
	# resize screen
	get_tree().root.content_scale_mode = Window.CONTENT_SCALE_MODE_VIEWPORT

func _process(delta):
	pass


func _on_timer_timeout():
	$Timer.start()
	RNG.randomize()
	var random_int = RNG.randi_range(0, 3)
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
	
