extends Node3D

@onready var model_crate = $ModelCrate

@export var is_clicked: bool = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_static_body_3d_input_event(camera, event, position, normal, shape_idx):
	var click = event as InputEventMouseButton
	
	if click and click.button_index == 1 and click.pressed:
		print("clicked")
