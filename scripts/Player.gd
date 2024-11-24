extends CharacterBody2D
class_name player

const SPEED = 150.0
const JUMP_VELOCITY = -400.0

var stop = false

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	#if not is_on_floor():
		#velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("Move_Left", "Move_Right")
	if direction && !stop:
		velocity.x = direction * SPEED
		$player_sprite_animation.play()
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	direction = Input.get_axis("Move_Up", "Move_Down")
	if direction && !stop:
		velocity.y = direction * SPEED
		$player_sprite_animation.play()
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	if velocity == Vector2.ZERO:
		$player_sprite_animation.stop()
	move_and_slide()


func freeze():
	print("freezing!")
	stop = true
	$player_sprite_animation.stop()

func unfreeze():
	print("unfreezing!")
	stop = false
	$player_sprite_animation.play()

func player():
	pass
