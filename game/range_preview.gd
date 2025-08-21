class_name RangePreview
extends Node2D

@onready var circle: TextureRect = $RectAreaPreview

func update(value: float):
	circle.texture.width = int(value)
	circle.texture.height = int(value)
	circle.size = Vector2(value, value)
	circle.position = -Vector2(value, value) / 2
