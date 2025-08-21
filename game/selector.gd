class_name Selector
extends Node2D

var _grabbed_object: Node2D = null
@export var level: Level
@onready var audio_error: AudioStreamPlayer2D = $AudioError
@onready var audio_place: AudioStreamPlayer2D = $AudioPlace

signal grabbed(thing)
signal dropped(thing)


func _input(event: InputEvent):
	if event is InputEventMouseMotion:
		global_position = event.position


func _unhandled_input(event: InputEvent):
	if event.is_action_released("act_select"):
		if _grabbed_object:
			if _grabbed_object is TowerBase:
				var ok = _grabbed_object.can_place()
				if ok:
					release()
				else:
					audio_error.play()
			else:
				release()


func has_item() -> bool:
	return _grabbed_object != null


func grab(object: Node2D):
	if _grabbed_object:
		print('selector is holding an object')
		return
		
	if object.get_parent():
		object.reparent(self)
	else:
		add_child(object)
		
	_grabbed_object = object
	grabbed.emit(object)



func release():
	print('releasing %s' % _grabbed_object)
	if _grabbed_object:
		dropped.emit(_grabbed_object)
		_grabbed_object.reparent(level)
		_grabbed_object = null
		audio_place.play()
