extends MeshInstance

var speed = 10.0

# process changes since previous frame (not married to framerate)
func _process(delta):

	var input_vector = Vector3.ZERO
	if Input.is_action_pressed('ui_right'):
		input_vector.x += speed
	if Input.is_action_pressed('ui_left'):
		input_vector.x -= speed
	if Input.is_action_pressed('ui_down'):
		input_vector.z += speed
	if Input.is_action_pressed('ui_up'):
		input_vector.z -= speed

	input_vector = input_vector.normalized() * delta * 5
	translate(input_vector)


# Called when the node enters the scene tree for the first time.
func _ready():
	print("the main cube is ready!!")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
