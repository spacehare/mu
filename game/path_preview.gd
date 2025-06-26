extends Node

@export var speed := 64.0
@export var path_follow = self


func _ready():
	_reset_marker()


func _process(delta):
	path_follow.progress += delta * speed
	if path_follow.progress_ratio > .99:
		_reset_marker()


func _reset_marker():
	path_follow.progress_ratio = 0