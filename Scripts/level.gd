extends Node3D

signal animate(new_position)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	%SecondPathRun.progress += 0.5 * delta
	
func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ESCAPE:
			$Fruit.reparent($"Paths/Second Path/SecondPathRun")
			emit_signal("animate", Vector3(-0.700, 0.631, -0.948))
			

