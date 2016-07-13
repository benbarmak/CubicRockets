
extends RigidBody2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)
func _process(delta):
	var player_pos = get_pos()
	var speed = 7554
	if (Input.is_action_pressed("d")):
		set_axis_velocity(Vector2(speed*delta, 0))
	if (Input.is_action_pressed("a")):
		set_axis_velocity(Vector2(-speed*delta, 0))
		
	var bodies = get_colliding_bodies()
	var canjump = false
	for body in bodies:
		print(body.get_name())
		if body.get_name() == "Platform":
			canjump = true
			
	if (Input.is_action_pressed("w") and canjump == true):
		set_axis_velocity(Vector2(0, -430))
		