@tool
extends Resource

class_name PlayerInfo

@export var base_health: int:
	get:
		return base_health
	set(value):
		if (value < 0):
			value = 0
		base_health = value

@export var gold_amount: int:
	get:
		return gold_amount
	set(value):
		if (value < 0):
			value = 0
		gold_amount = value

