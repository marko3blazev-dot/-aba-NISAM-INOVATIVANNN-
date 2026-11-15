extends Area2D
class_name Platform

var _entered = false

func _on_body_entered(_CharacterBody2D):
	_entered = true

func _on_body_exited(_CharacterBody2D):
	_entered = false

func _on_bounce_p_body_entered(body):
	if body is zaba:
		if body.velocity.y > 0:
			body.start_flying()
