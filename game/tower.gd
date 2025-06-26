extends Node2D
class_name Tower

@export var info: TowerInfo
@onready var area_attack: Area2D = $AreaAttack
var targets: Array[Node2D] = []
var cooldown: SpanFloat = SpanFloat.new()
@export var ability: Ability


func _ready():
	area_attack.body_entered.connect(_on_body_entered)
	area_attack.body_exited.connect(_on_foe_exited)
	cooldown.current = 0.0
	cooldown.minimum = 0.0
	cooldown.maximum = info.cooldown


func _on_body_entered(body: Node2D):
	var parent = body.get_parent()
	if parent is Foe:
		targets.append(parent)
		parent.died.connect(remove_target.bind(parent))


func _on_foe_exited(body: Node2D):
	var parent = body.get_parent()
	if parent is Foe:
		remove_target(parent)
		parent.died.disconnect(remove_target.bind(parent))


func remove_target(target):
	var idx = targets.find(target)
	targets.remove_at(idx)


func use_ability():
	pass

# func attack():
# 	var target = targets.front()
