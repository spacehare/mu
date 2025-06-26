extends Node

@export var path: Path2D
@onready var timer: Timer = $TimerSpawn
@export var test_info: FoeInfo
@export var foe_scene: PackedScene
@export var level: Level


# func _ready():
# 	spawn_foe(test_info)


func spawn_foe(foe_info: FoeInfo):
	# var pos = path.curve.get_point_position(0)
	var new = foe_scene.instantiate()
	if new is Foe:
		level.path.add_child(new)
		new.setup(level.path)
		new.info = foe_info


func _input(event):
	if OS.is_debug_build():
		if event.is_action('debug_spawn_foe'):
			spawn_foe(test_info)
