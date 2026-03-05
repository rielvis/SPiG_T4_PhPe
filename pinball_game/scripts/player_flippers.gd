extends Node2D

var leftFlipperFlipped : bool = false
var rightFlipperFlipped : bool = false

# leftFlipper = %leftFlipper
# rightFlipper = %rightFlipper

var LFRaisedRotationDegrees : float = -15.00
var LFDownRotationDegrees : float = 20.00
var RFRaisedRotationDegrees : float = 15.00
var RFDownRotationDegrees : float = -20.00

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _physics_process(delta: float) -> void:
	var flipperRotationSpeed : float = 750.00 * delta
	
	# Left flipper flipping
	if leftFlipperFlipped == true:
		if %leftFlipper.rotation_degrees > LFRaisedRotationDegrees:
			%leftFlipper.rotation_degrees -= flipperRotationSpeed
	elif leftFlipperFlipped == false:
		if %leftFlipper.rotation_degrees < LFDownRotationDegrees:
			%leftFlipper.rotation_degrees += flipperRotationSpeed
	
	# Right flipper flipping
	if rightFlipperFlipped == true:
		if %rightFlipper.rotation_degrees < RFRaisedRotationDegrees:
			%rightFlipper.rotation_degrees += flipperRotationSpeed
	elif rightFlipperFlipped == false:
		if %rightFlipper.rotation_degrees > RFDownRotationDegrees:
			%rightFlipper.rotation_degrees -= flipperRotationSpeed
	
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
		rightFlipperFlipped = true
		print("rF true")
	elif event.is_action_released("D") || event.is_action_released("rightArrow"):
		rightFlipperFlipped = false
		print("rF false")
