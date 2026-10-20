class_name Dialogue_Class
extends RefCounted

@export var Dialogue_Answer: String

@export var ID: int

@export var Dialogue_Option_1: String
@export var Option_1_ID: int

@export var Dialogue_Option_2: String
@export var Option_2_ID: int

func _init(
SceneID: int,
Dialogue: String, 
Dialogue_Option_One: String,
Dialogue_Option_One_ID: int,
Dialogue_Option_Two: String,
Dialogue_Option_Two_ID: int,
) -> void:
	ID = SceneID
	Dialogue_Answer = Dialogue
	
	Dialogue_Option_1 = Dialogue_Option_One
	Option_1_ID = Dialogue_Option_One_ID
	
	Dialogue_Option_2 = Dialogue_Option_Two
	Option_2_ID = Dialogue_Option_One_ID
	
	
