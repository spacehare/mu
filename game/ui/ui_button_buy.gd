extends Button

@export var ware: Ware
@export var shop: Shop

func _pressed():
	shop.rent(ware)
