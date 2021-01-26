extends KinematicBody2D

const GRAVITY: Vector2 = Vector2(0, 900.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	move_and_slide_with_snap(GRAVITY, Vector2.DOWN * 32, Vector2.UP)
