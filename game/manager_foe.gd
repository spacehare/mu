extends Node

@export var path: Path2D

func spawn_foe(foe: FoeInfo):
	var pos = path.curve.get_point_position(0)