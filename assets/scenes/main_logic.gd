extends Node2D


var block = preload("uid://cr57ap0vqk2m8")
var rng = RandomNumberGenerator.new()

func _process(_delta: float) -> void:
	if Engine.get_process_frames() % 120 == 0:
		add_blocks()
	

# create blocks
func add_blocks():
	var block_instance = block.instantiate()
	get_tree().get_root().get_node(^"/root/Node2D/blocks").add_child(block_instance)

	# make it so blocks are random up and down y
	var randomizer = rng.randf_range(-550.0, 550.0)
	
	# set position
	block_instance.global_transform = global_transform
	block_instance.position = Vector2(1280.0, randomizer)
	
func remove_blocks():
	pass
