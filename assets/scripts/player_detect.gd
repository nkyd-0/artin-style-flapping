extends StaticBody2D

const SPEED = 300.0

@onready var blocks: StaticBody2D = $"."
var rng = RandomNumberGenerator.new()


func _on_body_entered(body: Node) -> void:
	pass # Replace with function body.
	
func _physics_process(delta: float) -> void:
	blocks.position.x -= SPEED * delta
	
	# make it so blocks are random up and down y
	var randomizer = rng.randf_range(-10.0, 10.0)
	
	
