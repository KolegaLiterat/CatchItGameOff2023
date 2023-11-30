extends CharacterBody3D

var is_moving: bool = true

var move_by_path = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	pass
		
func _physics_process(delta):
	if is_moving == true:
		self.move_and_collide(Vector3(1, 0, 0) * delta)
	
func _on_level_animate(new_position):
	is_moving = false
	print(self.position)
	self.position = new_position
	print(self.position)

func _on_area_conv_0_body_entered(body):
	body.queue_free()
