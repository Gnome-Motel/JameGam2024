extends Area2D

@export var nearby = false



func _on_body_entered(body):
	nearby = true



func _on_body_exited(body):
	nearby = false
