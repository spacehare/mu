class_name Selector
extends Node2D

var _grabbed_object: Node2D = null
@export var level: Level


func _input(event):
	if event is InputEventMouseMotion:
		global_position = event.position


func has_item():
	return _grabbed_object != null


func grab(object: Node2D):
	if object.get_parent():
		object.reparent(self)
	else:
		add_child(object)
		
	_grabbed_object = object


func release():
	_grabbed_object.reparent(level)
	_grabbed_object = null
