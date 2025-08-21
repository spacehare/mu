extends BoxContainer

@export var player: Player
@onready var display_value_health: DisplayValue = $DisplayValueHealth
@onready var display_value_money: DisplayValue = $DisplayValueMoney

func _ready():
	player.health.updated.connect(display_value_health.update_span_int)
	display_value_health.update_span_int(player.health)
	
	player.money.updated.connect(display_value_money.update_span_int)
	display_value_money.update_span_int(player.money)
