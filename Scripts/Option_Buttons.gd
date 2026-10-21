extends Control

var Main_Class: Node2D

var Dialogue_class: Dialogue_Class

func _on_option_2_pressed() -> void:
	Main_Class.SetDialogue(Dialogue_class.Option_2_ID)


func _on_option_1_pressed() -> void:
	Main_Class.SetDialogue(Dialogue_class.Option_1_ID)
