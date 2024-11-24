extends Resource
class_name level_save

@export var door_open: int

func use_door():
	if door_open == 1:
		door_open = 0
	elif door_open == 0:
		door_open = 1
	return door_open
