extends Area2D


var semente = 1

# Called when the node enters the scene tree for the first time 	.
func _ready() -> void:
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass






func _on_body_entered(body: Node2D) -> void:
	semente -= 1
	if semente > -1:
		show()
		$AnimatedSprite2D.frame = 0
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 1
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 2
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 3
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 4
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 5
		await get_tree().create_timer(3.0).timeout
