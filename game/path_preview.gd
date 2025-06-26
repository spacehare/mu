extends Node

@export var speed := 256.0
@export var path_follow = self


func _process(delta):
	path_follow.progress += delta * speed
