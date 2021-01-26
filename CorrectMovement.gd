extends KinematicBody2D


const RADIUS: float = 50.0
const SPEED: float = 3.0

var origin: Vector2
var time: float

# Called when the node enters the scene tree for the first time.
func _ready():
	time = 0.0
	origin = Vector2(global_position.x - RADIUS, global_position.y)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta
	global_position = Vector2(origin.x + RADIUS * cos(SPEED * time), origin.y + RADIUS * sin(SPEED * time))
