extends Node2D

export var velocity = 96;

var targetPosition;
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	targetPosition = position;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = position.move_toward(targetPosition, velocity * delta);


func _input(event):
	if event is InputEventMouseButton and event.button_index == 2 and event.pressed:
		targetPosition =  event.position;
