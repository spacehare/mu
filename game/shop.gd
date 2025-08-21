class_name Shop
extends Node

@export var level: Level
@export var player: Player
@export var selector: Selector

var _rental: Node2D
var _ware: Ware

func _ready():
	selector.dropped.connect(_on_dropped)


func rent(ware: Ware):
	if player.money.current < ware.price:
		print('not enough money %s < %s' % [player.money.current, ware.price])
		return
	elif selector.has_item():
		print('selector is holding an item')
		return
		
	var inst = ware.scene.instantiate()
	_rental = inst
	_ware = ware
	selector.grab(inst)


func _on_dropped(obj):
	print('on dropped %s' % obj)
	if obj == _rental:
		buy(obj)

	
func buy(object: Node2D):
	player.money.current -= _ware.price
	_ware = null
	_rental = null
