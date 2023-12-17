@tool
extends Resource

class_name UnitInfo

@export var max_health: int :
	get:
		return max_health
	set(value):
		if (value < 0):
			value = 0
		max_health = value

var health: int = max_health :
	get:
		return health
	set(value):
		if (value < 0):
			value = 0
		health = value

@export var speed: float
@export var kill_value: int
@export var damage: int
