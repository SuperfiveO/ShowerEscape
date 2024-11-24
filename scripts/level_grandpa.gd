extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$GUI/scene_transition/Black.hide()
	$GUI.transition(2)
	$GUI/textbox.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_entry_door_exit():
	$GUI.transition(1)
	await $GUI/scene_transition/animation_player.animation_finished
	get_tree().change_scene_to_file("res://scenes/level.tscn")
