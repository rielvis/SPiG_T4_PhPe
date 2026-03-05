extends Node2D

const BULLET = preload("res://object_pooling_tutorial/scenes/bullet.tscn")
@onready var bullet_spawn_location: Node2D = $Spaceship/bulletSpawnLocation

var is_firing : bool = false

var bullet_count : int = 180
var max_bullet_count : int = 10000
var bullet_spread_angle : float = 5
var bullet_pool : Array[Bullet]
var bullet_index : int = 0

func _ready() -> void:
	for i in max_bullet_count:
		var b : Bullet = BULLET.instantiate()
		add_child(b)
		bullet_pool.append(b)
		b.reset_bullet()
	pass

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("click"):
		#spawn_bullets()
		is_firing = true
	elif event.is_action_released("click"):
		is_firing = false
		
func _physics_process(_delta: float) -> void:
	if is_firing == true:
		#spawn_bullets()
		spawn_bullets_pooled()
	pass

#func spawn_bullets() -> void:
	#var count : int = 180
	#var dir : Vector2 = Vector2.UP
	#var rad_angle : float = deg_to_rad(5)
	#var angle : float = -rad_angle * count * 0.5
	#
	#for i in count:
		#var bullet : Bullet = BULLET.instantiate()
		#add_child(bullet)
		#bullet.move_direction = dir.rotated(angle)
		#bullet.global_position = bullet_spawn_location.global_position
		#angle += rad_angle
		
func spawn_bullets_pooled() -> void:
	var dir : Vector2 = Vector2.UP
	var rad_angle : float = deg_to_rad(bullet_spread_angle)
	var angle : float = -rad_angle * bullet_count * 0.5
	
	for i in bullet_count:
		var b : Bullet = get_bullet_from_pool()
		b.move_direction = dir.rotated(angle)
		b.global_position = bullet_spawn_location.global_position
		b.visible = true
		b.set_physics_process(true)
		angle += rad_angle
		pass

func get_bullet_from_pool() -> Bullet:
	var bullet : Bullet = bullet_pool[bullet_index]
	bullet_index = wrapi(bullet_index + 1, 0, max_bullet_count)
	return bullet
