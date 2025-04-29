class_name DamageEffect
extends Effect

var amount := 0

func execute(targets :Array[Node]) -> void :
	for target in targets:
#		檢查null
		if not target:
			continue
		if target is Enemy or target is Player:
			target.take_damage(amount)
		
