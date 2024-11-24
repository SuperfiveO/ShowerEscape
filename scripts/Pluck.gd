extends RigidBody2D

signal textbox
signal textbox_off
signal interact

var player_in_interact_area = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$idle_animation.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player_in_interact_area && Input.is_action_just_pressed("interact"):
		_speak()


func _speak():
	print("interaction!")
	textbox.emit()
	$interact.hide()


func _on_interact_area_body_entered(body):
	if body.has_method("player"):
		player_in_interact_area = true
		$interact.show()


func _on_interact_area_body_exited(body):
	if body.has_method("player"):
		player_in_interact_area = false
		textbox_off.emit()
		$interact.hide()
