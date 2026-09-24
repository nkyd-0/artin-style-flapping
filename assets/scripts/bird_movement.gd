extends CharacterBody2D

const JUMP_VELOCITY = -400.0

var dead := false


func _physics_process(delta: float) -> void:
	# gravity
	if not is_on_floor():
		velocity += get_gravity() * delta

	# jump
	if not dead:
		if Input.is_action_just_pressed("jump"):
			velocity.y = JUMP_VELOCITY

	move_and_slide()

func death():
	dead = true
