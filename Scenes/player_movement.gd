extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		linear_velocity -= Vector2(50, 0).rotated(rotation)
		
	if Input.is_action_pressed("ui_right"):
		linear_velocity += Vector2(50, 0).rotated(rotation)