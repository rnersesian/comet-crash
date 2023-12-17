extends Node2D

@export var units = Array()
@export var spawn_cooldown: float
@onready var cooldown = spawn_cooldown
var can_spawn = false
var truc = preload("res://Entities/GroundUnit.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	cooldown -= delta
	
	if (cooldown <= 0):
		var machin = truc.instantiate()
		add_child(machin)
		print("spawn !")
		cooldown = spawn_cooldown
