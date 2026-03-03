class_name Bullet extends Node2D

var move_direction : Vector2 = Vector2.UP
var distance_moved : float = 0

func _physics_process(_delta: float) -> void:
	var new_pos : Vector2 = position + move_direction * _delta * 900
	distance_moved += position.distance_to(new_pos)
	position = new_pos
	if distance_moved > 1000:
		#queue_free()
		reset_bullet()
		
func reset_bullet() -> void:
	distance_moved = 0.0
	visible = false
	set_physics_process(false)
