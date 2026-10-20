extends Button

@export var DialogueManager: Node2D

func _on_pressed() -> void:
	DialogueManager._SetDialogue(0)
	print("CLICKED")
