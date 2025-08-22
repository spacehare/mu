@tool
class_name LabelSitelen
extends Label

@export_multiline var input: String = 'seme'
@export_tool_button('convert') var convert_action = convert

func _ready():
	text_to_ucsur(input)


func convert():
	text_to_ucsur(input)



func text_to_ucsur(value: String) -> void:
	text = TokiPona.ucsurize(value)
