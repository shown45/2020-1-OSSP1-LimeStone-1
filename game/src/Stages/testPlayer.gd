extends KinematicBody2D

var velocity = Vector2.ZERO

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ul_right") - Input.get_action_strength("ui_left")
	
	if input_vector != Vector2.ZERO:
		velocity = input_vector
	else:
		velocity = Vector2.ZERO
		