class_name Selector
extends Node2D

var _grabbed_object: Node2D = null
var _selected_object: Node2D = null
@export var level: Level
@onready var audio_error: AudioStreamPlayer2D = $AudioError
@onready var audio_place: AudioStreamPlayer2D = $AudioPlace
const COLOR_OK = Color.GREEN
const COLOR_BAD = Color.RED

signal grabbed(thing)
signal dropped(thing)
signal selected(thing)
signal deselected(thing)

func _process(delta):
	if _grabbed_object:
		if _grabbed_object is TowerBase:
			modulate = COLOR_OK if _grabbed_object.can_place() else COLOR_BAD


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


func pick_point():
	var viewport := get_viewport()
	var mouse := viewport.get_mouse_position()
	var space := get_world_2d().direct_space_state

	var query = PhysicsPointQueryParameters2D.new()
	query.position = mouse
	query.collide_with_areas = true
	query.collide_with_bodies = false
	query.collision_mask = 1

	var result := space.intersect_point(query, 8)
	return result


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
