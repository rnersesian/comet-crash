extends Node2D

class_name GroundUnit

@export var unit_info: UnitInfo
var rng = RandomNumberGenerator.new()
@onready var direction = Vector2(rng.randf_range(-1,1), rng.randf_range(-1,1))



# Called when the node enters the scene tree for the first time.
func _ready():
	print("I exist !")
	unit_info.health = unit_info.max_health
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	global_rotation = direction.angle()
	print(rotation)
	position += Vector2.UP.rotated(direction.angle()) * delta * unit_info.speed

