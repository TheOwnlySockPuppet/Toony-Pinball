extends RigidBody2D

var bounce_force = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pinball_body_entered(body):
	# If the collision was a bumper, apply a bounce vector away from the bumper!
	if(body is Bumper):
		var bounceVector = position - body.position
		print(bounceVector.normalized())
		apply_impulse(bounceVector.normalized() * bounce_force)
