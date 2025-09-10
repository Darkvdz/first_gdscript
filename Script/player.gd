extends CharacterBody3D
var player_speed : float=10.0

func _physics_process(delta):
	var player_direction=Vector3.ZERO
	
	if Input.is_action_pressed("move_right"):
		player_direction.x +=3
	if Input.is_action_pressed("move_left"):
		player_direction.x -=3
	if Input.is_action_pressed("move_up"):
		player_direction.z -=3
	if Input.is_action_pressed("move_down"):
		player_direction.z +=3	
	player_direction.y=0
	
	velocity=player_direction.normalized()*player_speed
	move_and_slide()
	
