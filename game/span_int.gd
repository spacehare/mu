@tool
extends Resource
class_name SpanInt

signal updated(stat: SpanInt)
signal hit_max
signal hit_min

@export var minimum := 0:
	set(val):
		if minimum >= maximum:
			return
		minimum = val
		updated.emit(self)
@export var maximum := 100:
	set(val):
		if maximum <= minimum:
			return
		maximum = val
		updated.emit(self)
@export var current := 0:
	set(val):
		current = clampi(val, minimum, maximum)
		updated.emit(self)
		if current == maximum:
			hit_max.emit()
		elif current == minimum:
			hit_min.emit()
@export_enum('current', 'min', 'max') var set_current_to: int = 0


func _init(_minimum = minimum, _maximum = maximum, _current = current):
	minimum = _minimum
	maximum = _maximum
	current = _current


func _ready():
	# if not label:
	# 	label = 'STAT'
	match set_current_to:
		0: current = current
		1: current = minimum
		2: current = maximum
	updated.emit(self)