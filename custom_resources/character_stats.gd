class_name CharacterStats
extends Stats

@export var starting_deck: CardPile
@export var cards_per_turn: int
@export var max_mana: int

var mana: int : set = set_nama
var deck:CardPile
var discard:CardPile
var draw_pileCardPile

func set_nama(value:int) -> void:
	mana = value
	stats_changed.emit()
	
func reset_mana() -> void:
	self.mana = max_mana
	
func can_play_card(card:Card) -> bool:
	return mana >= card.cost
	
func create_instance() -> Resource:
	var instance: CharacterStats = self.duplicate()
	instance.health = max_helth
	instance.block = 0
	instance.reset_mana()
	instance.deck = instance.starting_deck.duplicate()
	instance.draw_pileCardPile = CardPile.new()
	instance.discard = CardPile.new()
	return instance
