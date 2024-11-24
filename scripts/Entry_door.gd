extends Sprite2D

var player_in_interact_area_1 = false
signal exit


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player_in_interact_area_1 && Input.is_action_just_pressed("interact"):
		exit.emit()

func _on_door_approach_body_entered(body):
	if body.has_method("player"):
		player_in_interact_area_1 = true
		$door_approach/interact.show()

func _on_door_approach_body_exited(body):
	if body.has_method("player"):
		player_in_interact_area_1 = false
		$door_approach/interact.hide()
