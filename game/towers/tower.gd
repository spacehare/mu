extends Node2D
class_name Tower

@onready var area_attack: Area2D = $AreaAttack
var targets: Array[Node2D] = []
var cooldown: SpanFloat = SpanFloat.new()
var attack_range: float = 6.0
@export var info: TowerInfo
@export var ability: Ability


func _ready():
	area_attack.body_entered.connect(_on_node_entered)
	area_attack.body_exited.connect(_on_node_exited)
	area_attack.area_entered.connect(_on_node_entered)
	area_attack.area_exited.connect(_on_node_exited)
	cooldown.minimum = 0.0
	cooldown.maximum = info.cooldown
	cooldown.current = cooldown.maximum


func _on_node_entered(col: Node2D):
	var parent = col.get_parent()
	if parent is Foe:
		targets.append(parent)


func _on_node_exited(col: Node2D):
	var parent = col.get_parent()
	if parent is Foe:
		remove_target(parent)


func remove_target(target):
	printt(targets, target)
	var idx = targets.find(target)
	targets.remove_at(idx)


func _physics_process(delta):
	cooldown.current -= delta
	if targets and cooldown.current == cooldown.minimum:
		use_ability()


func use_ability():
	if not targets.is_empty():
		cooldown.current = cooldown.maximum
		var data = AbilityData.new()
		data.targets = targets
		ability.do(data)
