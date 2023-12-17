@tool
extends Resource

class_name TurretInfo

@export var price: int:
	get:
		return price
	set(value):
		price = clamp(value, 0, 1000)


@export var damage: int

@export var detection_range: float

