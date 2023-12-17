extends Node2D

@export var turret_head: Sprite2D

@export var turret_info: TurretInfo



var direction: Vector2 = Vector2.ZERO

func get_detection_shape() -> CircleShape2D:
	return get_node("Enemy Detection/CollisionShape2D").shape

# Called when the node enters the scene tree for the first time.
func _ready():
	turret_head = get_node("Head")
	var detection_shape = get_detection_shape()
	detection_shape.radius = turret_info.detection_range
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	turret_head.rotation += delta * 1.5
	
	
