extends Area2D



var _entered = false
func _on_area_entered(_CharacterBody2D):
	print("entered")
	get_tree()._entered = true
	_entered = true


func _on_area_exited(_CharacterBody2D):
	_entered = false


	
func _process(_delta):
	if _entered == true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene_to_file("res://4.tscn")
