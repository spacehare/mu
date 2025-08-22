extends Resource
class_name Ability

@export var effects: Array[Effect]

func do(data: AbilityData):
	for effect in effects:
		effect.do(data)