class_name TowerBase
extends Node2D

@onready var hitbox: Area2D = $AreaHitbox
signal selected(tower: TowerBase)


func _ready() -> void:
	hitbox.input_event.connect(_on_input_event)


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("act_select"):
		selected.emit(self)


func can_place() -> bool:
	return not hitbox.has_overlapping_areas()
