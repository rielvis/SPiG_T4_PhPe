extends Node2D

var leftFlipperFlipped : bool = false
var rightFlipperFlipped : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _unhandled_input(event: InputEvent) -> void:
	# Checking for left flipper player input
	if event.is_action_pressed("A") || event.is_action_pressed("leftArrow"):
		leftFlipperFlipped = true
		print("lF true")
	elif event.is_action_released("A") || event.is_action_released("leftArrow"):
		leftFlipperFlipped = false
		print("lF false")
	
	# Checking for right flipper player input
	if event.is_action_pressed("D") || event.is_action_pressed("rightArrow"):
		leftFlipperFlipped = true
		print("rF true")
	elif event.is_action_released("D") || event.is_action_released("rightArrow"):
		leftFlipperFlipped = false
		print("rF false")
