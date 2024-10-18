extends CharacterBody2D


const SPEED = 100.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		pass
		# velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("andando_pra_esquerda", "andando_pra_direita")
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		$AnimatedSprite2D.play("Parada")

	move_and_slide()
	
	
	if Input.is_action_just_pressed("andando_pra_esquerda"):
		$AnimatedSprite2D.play("Andando_pra_esquerda")
	if Input.is_action_just_pressed("andando_pra_direita"):
		$AnimatedSprite2D.play("Andando_pra_direita")
