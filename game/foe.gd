@tool

extends Node2D
class_name Foe

@export var follow: PathFollow2D
@export var info: FoeInfo
@onready var hp: SpanInt = SpanInt.new()
@onready var speed: SpanFloat = SpanFloat.new()
@onready var avatar: Sprite2D = $Sprite2D


signal died

# make sure the Foe's transform is 0,0


func _ready():
	hp.minimum = 0
	hp.maximum = info.hp
	hp.current = info.hp
	speed.minimum = -512
	speed.maximum = info.speed
	speed.current = info.speed
	avatar.texture = info.avatar

	hp.hit_min.connect(die)


func _process(delta):
	follow.progress += delta * speed.current


func die():
	died.emit()
	follow.queue_free()
