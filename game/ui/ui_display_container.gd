extends BoxContainer

@export var player: Player
@onready var display_value = $DisplayValue
@onready var display_value_2 = $DisplayValue2

func _ready():
	player.health.updated.connect(display_value.update_span_int)
	display_value.update_span_int(player.health)
	player.money.updated.connect(display_value.update_span_int)
	display_value_2.update_span_int(player.money)
