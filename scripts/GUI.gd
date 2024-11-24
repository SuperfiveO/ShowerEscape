extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	$textbox.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
# Tween for fade to black scene transition
func transition(int):
	if int == 1:
		$scene_transition/Black.show()
		$scene_transition/animation_player.play("fade_to_black")
	elif int == 2:
		$scene_transition/Black.show()
		$scene_transition/animation_player.play("fade_to_normal")


