extends Area2D

signal fadeout

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.has_method("player"):
		fadeout.emit()
		if body.has_method("freeze"):
			print("FREEZE!")
			body.freeze()
