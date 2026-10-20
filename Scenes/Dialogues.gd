extends Node2D 

@export var Text: Array#int is ID and string is dialogue
@export var Text_Displayer: Label
@export var Option_1_Text: Label
@export var Option_2_Text: Label

func _GetDialogue(ID: int) -> void:
	print("Rand Dilogue")
	var DC: Dialogue_Class = Dialogue_Class.new(0, "Dialogue", "Option 1", 2,"Option 2", 3)
	Text.set(0, DC)
	Text.set(1, DC)
	print(Text.get(0).ID, " ", DC.Dialogue_Answer)

func _ready() -> void:
	_GetDialogue(0)

func _SetDialogue(ID: int) -> void:
	for d in Text:
		if d.ID == ID:
			Text_Displayer.text = d.Dialogue_Answer
			Option_1_Text.text = d.Dialogue_Option_1
			Option_2_Text.text = d.Dialogue_Option_2
		else:
			print("NTO FOUND")
