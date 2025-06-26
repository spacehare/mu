extends Resource
class_name TowerInfo

@export var title := ""
@export var cost := 1
@export_range(0.0, 10.0, .1, 'suffix:s') var cooldown: float = 2.0