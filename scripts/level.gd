extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	$GUI/scene_transition/Black.hide()
	$GUI.transition(2)
	$GUI/textbox.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_door_1_fadeout():
	$GUI.transition(1)
	await $GUI/scene_transition/animation_player.animation_finished
	print("transition 1 completed")
	get_tree().change_scene_to_file("res://scenes/level_grandpa.tscn")

func _on_door_2_fadeout():
	$GUI.transition(1)
	await $GUI/scene_transition/animation_player.animation_finished
	print("transition 1 completed")
	get_tree().change_scene_to_file("res://scenes/level_stick.tscn")

func _on_door_3_fadeout():
	$GUI.transition(1)
	await $GUI/scene_transition/animation_player.animation_finished
	print("transition 1 completed")
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")

func _on_door_4_fadeout():
	pass # Replace with function body.

func _on_door_5_fadeout():
	pass # Replace with function body.
	
func _on_door_6_fadeout():
	pass # Replace with function body.

func _on_door_7_fadeout():
	pass # Replace with function body.

func _on_door_8_fadeout():
	pass # Replace with function body.

func _on_door_9_fadeout():
	pass # Replace with function body.
	
	
# ----------- TEXTBOX FUNCTIONS ----------------

# PLUCK MESSAGE

func _on_pluck_textbox():
	print("Pluck!")
	$GUI/textbox.show()

func _on_pluck_textbox_off():
	print("No more Pluck!")
	$GUI/textbox.hide()

# PUZZLE 1 SIGN MESSAGE

func _on_puzzle_sign_textbox():
	print("Sign1!")
	$GUI/textbox.show()

func _on_puzzle_sign_textbox_off():
	print("No more Sign1!")
	$GUI/textbox.hide()
	
# PUZZLE 1 DOOR 1 MESSAGES

func _on_puzzle_doors_textbox():
	print("Door1!")
	$GUI/textbox.show()

func _on_puzzle_doors_textbox_off():
	print("No more Door1!")
	$GUI/textbox.hide()




