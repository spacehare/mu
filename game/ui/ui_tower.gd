class_name UiTower
extends Control

@export var shop: Shop
@onready var label: Label = %LabelTest


func _ready():
	shop.purchased.connect(update)


func update(what: Node):
	label.text = what.name
