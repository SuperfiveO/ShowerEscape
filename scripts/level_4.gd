extends Node2D

func _ready():
	$GUI/scene_transition/Black.hide()
	$GUI.transition(2)
	$GUI/textbox.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


# ----------- TEXTBOX FUNCTIONS ----------------

# CLOVER MESSAGE

func _on_clover_textbox():
	print("Clover!")
	$GUI/textbox.show()

func _on_clover_textbox_off():
	print("No more Clover!")
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
