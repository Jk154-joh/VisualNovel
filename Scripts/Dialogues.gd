extends Node2D 

@export var Text_Displayer: Label
@export var Option_1_Text: Label
@export var Option_2_Text: Label

@export var Button_Press_Script: Node
var Current_Scene: Dialogue_Class
var Dialogues: Array

@export var JSON_Path: String
@export var JSON_Settings: JSON

func _InitDialogues(ID: int) -> void:
	print("Rand Dilogue") 
	var DataFile = FileAccess.open(JSON_Path, FileAccess.READ)
	var JSON_S: Dictionary = JSON.parse_string(DataFile.get_as_text())
	for a in JSON_S.values():
		for b in a:
				var DC: Dialogue_Class = Dialogue_Class.new(
				b.ID, 
				b.Character_Dialogue, 
				b.Dialogue_Option_1, 
				b.Dialogue_Option_1_ID,
				b.Dialogue_Option_2, 
				b.Dialogue_Option_2_ID)
				Dialogues.append(DC)

func _ready() -> void:
	_InitDialogues(0)
	
	for a: Dialogue_Class in Dialogues:
		print(a.Dialogue_Answer)

func SetDialogue(ID: int) -> void:
	for d in Dialogues:
		if d.ID == ID:
			Text_Displayer.text = d.Dialogue_Answer
			Button_Press_Script.Dialogue_class = Current_Scene 

			Option_1_Text.text = d.Dialogue_Option_1
			Option_2_Text.text = d.Dialogue_Option_2
		else:
			print("NTO FOUND")
