class_name UiTower
extends Control

@export var shop: Shop
@onready var label: Label = %LabelTest
@onready var label_pieces: LabelSitelen = %LabelPieces

func _ready():
	shop.purchased.connect(update)


func update(what: Node):
	label.text = what.name


	if what is TowerBase:
		update_tower(what)

func update_tower(tower: TowerBase):
	var string = 'palisa jo ' + ('ijo mute' if tower.pieces else 'ala')
	label_pieces.text_to_ucsur(string)
