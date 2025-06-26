extends Effect
class_name EffectDamageFoe

@export var damage_amount: int = 1

func do(data: AbilityData):
	for target in data.targets:
		if target is Foe:
			target.hp.current -= damage_amount