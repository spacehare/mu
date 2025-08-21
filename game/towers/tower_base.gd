class_name TowerBase
extends Node2D

@onready var hitbox: Area2D = $AreaHitbox


func can_place() -> bool:
	return not hitbox.has_overlapping_areas()
