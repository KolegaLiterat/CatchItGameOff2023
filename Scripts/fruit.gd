extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$CharacterBody3D.move_and_collide(Vector3(1, 0, 0) * delta * 3)
	
	print(self.position)
