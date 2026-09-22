extends StaticBody2D

const SPEED = 300.0

@onready var blocks: StaticBody2D = $"."


func _on_body_entered(body: Node) -> void:
	pass # Replace with function body.
	
func _physics_process(delta: float) -> void:
	blocks.position.x -= SPEED * delta
	
	
	
