extends Node2D

var block = preload("uid://cr57ap0vqk2m8")
var rng = RandomNumberGenerator.new()

@onready var character := $character/CharacterBody2D


func _process(_delta: float) -> void:
	
	if Engine.get_process_frames() % 200 == 0:
		add_blocks()
	remove_blocks()

# create blocks
func add_blocks():
	var block_instance = block.instantiate()
	var blk = block_instance.get_node("StaticBody2D")
	blk.touch.connect(character.death)
	get_tree().get_root().get_node(^"/root/Node2D/blocks").add_child(block_instance)

	# make it so blocks are random up and down y
	var randomizer = rng.randf_range(-550.0, 550.0)
	
	# set position
	block_instance.global_transform = global_transform
	block_instance.position = Vector2(1500.0, randomizer)
	
func remove_blocks():
	var block_tbr := get_tree().get_root().get_node(^"/root/Node2D/blocks").get_children()
	for block in block_tbr:
		if block.position.x <= -2000.0:
			print("deleted")
			block.queue_free()
