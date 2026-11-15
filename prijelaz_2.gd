extends Area2D


var _entered = false

	


func _on_body_shape_entered(body_rid: RID, body: zaba, body_shape_index: int, local_shape_index: int) -> void:
	_entered = true



func _on_body_shape_exited(body_rid: RID, body: zaba, body_shape_index: int, local_shape_index: int) -> void:
	_entered = false
	

func _process(_delta):
	if _entered == true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene_to_file("res://scena3.tscn")
