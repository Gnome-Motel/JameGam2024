extends Area2D

@export var nearby = false
@onready var pj: PinJoint2D = $"../PinJoint2D"
var player

func _ready() :
	print(pj.node_b)


func _on_body_entered(body):
	nearby = true
	player = body

func _on_body_exited(body):
	nearby = false

func _process(delta):
	
	if nearby && Input.is_action_pressed("grab"):
		pj.node_b = player.get_path()
		player.position = global_position

	else:
		pj.node_b = ""
