class_name Shop
extends Node

@export var level: Level
@export var player: Player
@export var selector: Selector

func rent(ware: Ware):
	if player.money.current < ware.price:
		print('not enough money %s < %s' % [player.money, ware.price])
		return
	elif selector.has_item():
		print('selector is holding an item')
		return
		
	var inst = ware.scene.instantiate()
	selector.grab(inst)
	
func buy():
	pass
