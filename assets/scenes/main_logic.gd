extends Node2D

var block = preload("uid://cr57ap0vqk2m8").instantiate()

func _physics_process(_delta: float) -> void:
	
	add_sibling(block)
	
