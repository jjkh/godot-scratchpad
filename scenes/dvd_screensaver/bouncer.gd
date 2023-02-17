extends StaticBody2D

@export var speed = 40.0
var velocity = Vector2(speed, speed)

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if (collision):
		velocity = velocity.bounce(collision.get_normal())
