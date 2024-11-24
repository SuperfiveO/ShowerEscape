extends RigidBody2D

signal textbox
signal textbox_off
signal interact
signal answers


var player_in_interact_area = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player_in_interact_area && Input.is_action_just_pressed("interact"):
		_speak()
		


func _speak():
	print("interaction!")
	textbox.emit()
	answers.emit()
	$interact.hide()


func _on_area_2d_body_entered(body):
	if body.has_method("player"):
		player_in_interact_area = true
		$interact.show()


func _on_area_2d_body_exited(body):
	if body.has_method("player"):
		player_in_interact_area = false
		textbox_off.emit()
		$interact.hide()
