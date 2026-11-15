extends Node2D

func _on_bounce_p_body_entered(body: Node2D):
	if body is zaba:
		if body.velocity.y > 0:
				body.start_flying()
				get_tree().call_deferred("change_scene_to_file", "res://scena3.tscn")
