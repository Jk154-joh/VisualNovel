extends Button


@export var Scene: Node2D




func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://scene.tscn")
