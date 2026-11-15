extends Node2D

var _entered = false

func _process(_delta):
	if _entered == true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene_to_file("res://4.tscn")


func _on_prijelaz_3_body_entered(body: Node2D) -> void:
	_entered = true
