extends RigidBody2D

@export var door_open: Resource

signal textbox
signal textbox_off
signal interact

var player_in_interact_area_1 = false
var player_in_interact_area_2 = false
var player_in_interact_area_3 = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player_in_interact_area_1 && Input.is_action_just_pressed("interact"):
		_speak()
		_unlock()
	if player_in_interact_area_2 && Input.is_action_just_pressed("interact"):
		_speak()
		_unlock()
	if player_in_interact_area_3 && Input.is_action_just_pressed("interact"):
		_speak()
		_unlock()

func _speak():
	print("interaction!")
	textbox.emit()
	$interact1.hide()
	$interact2.hide()
	$interact3.hide()


func _unlock():
	if player_in_interact_area_1:
		$door_1_lock.set_deferred("disabled", true)
		$door_1_image.set_deferred("visible", false)
		var door_1 = door_open.use_door()
		print(door_1)
	if player_in_interact_area_2:
		$door_2_lock.set_deferred("disabled", true)
		$door_2_image.set_deferred("visible", false)
	if player_in_interact_area_3:
		$door_3_lock.set_deferred("disabled", true)
		$door_3_image.set_deferred("visible", false)

# Puzzle 1 Door 1 interaction functions
func _on_door_1_approach_body_entered(body):
	if body.has_method("player"):
		player_in_interact_area_1 = true
		$interact1.show()

func _on_door_1_approach_body_exited(body):
	if body.has_method("player"):
		player_in_interact_area_1 = false
		textbox_off.emit()
		$interact1.hide()


# Puzzle 1 Door 2 interaction functions
func _on_door_2_approach_body_entered(body):
	if body.has_method("player"):
		player_in_interact_area_2 = true
		$interact2.show()

func _on_door_2_approach_body_exited(body):
	if body.has_method("player"):
		player_in_interact_area_2 = false
		textbox_off.emit()
		$interact2.hide()


# Puzzle 1 Door 3 interaction functions
func _on_door_3_approach_body_entered(body):
	if body.has_method("player"):
		player_in_interact_area_3 = true
		$interact3.show()

func _on_door_3_approach_body_exited(body):
	if body.has_method("player"):
		player_in_interact_area_3 = false
		textbox_off.emit()
		$interact3.hide()


func _on_puzzle_sign_answers():
	$clue_1.show()
	$clue_2.show()
	$clue_3.show()
	$door_1_approach.set_deferred("monitoring", true)
	$door_2_approach.set_deferred("monitoring", true)
	$door_3_approach.set_deferred("monitoring", true)
