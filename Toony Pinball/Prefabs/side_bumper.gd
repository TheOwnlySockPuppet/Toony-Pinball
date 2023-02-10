extends StaticBody2D

@export
var bounceVector = Vector2(-1, -1)
@export
var bounceForce = 500


func _on_bump_area_body_entered(body):
	print(body.name)
	body.apply_impulse(bounceVector * bounceForce)
