@tool

extends BoxContainer
class_name UiSettingsSlider

@onready var l_title: Label = $Label
@onready var slider: Slider = $HSlider

@export var title: String = '???'

func _ready():
	l_title.text = title