class_name TowerBase
extends Node2D

@onready var hitbox: Area2D = $AreaHitbox


#func _ready():
	#hitbox.input_event.connect(_on_input_event)
#
#
#func _on_input_event(viewport, event, shape_idx):
	#print(viewport)
	#print(event)
	#print(shape_idx)


func can_place() -> bool:
	return not hitbox.has_overlapping_areas()
