extends Node2D

var fallSpeed

func _physics_process(delta: float) -> void:
	
	# Gravity
	position.y += fallSpeed
