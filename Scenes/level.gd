extends Node3D

var area_0_fruits = []
var area_1_fruits = []
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(area_1_fruits)

#areas
func _on_area_conv_0_body_entered(body):
	area_0_fruits.append(body)

func _on_area_conv_1_body_entered(body):
	area_1_fruits.append(body)

