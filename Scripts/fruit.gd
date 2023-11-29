extends CharacterBody3D

var is_moving: bool = true

var move_by_path = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	print(is_moving)
		
func _physics_process(delta):
	if is_moving:
		self.move_and_collide(Vector3(1, 0, 0) * delta)
	
func _on_level_animate():
	is_moving = false
