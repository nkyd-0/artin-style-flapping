extends StaticBody2D

signal touched

const SPEED = 300.0

@onready var blocks: Node2D = $".."
@onready var area_2d: Area2D = $CharacterBody2D/Area2D

	
func _physics_process(delta: float) -> void:
	blocks.position.x -= SPEED * delta
	


func _on_area_2d_area_entered(area: Area2D) -> void:
	touched.emit()
