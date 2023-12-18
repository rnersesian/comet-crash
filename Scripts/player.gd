extends Node2D


#Loading Sprites of Ship
var ship_straight = preload("res://Images/Ship/ship_straight.png")
var ship_left = preload("res://Images/Ship/ship_left.png")
var ship_right = preload("res://Images/Ship/ship_right.png")

@onready var selector_sprite: Sprite2D = get_node("Selector")


@onready var ship_sprite: Sprite2D = get_node("Sprite")
var quantity_rotation: float = 0


var direction: Vector2
var rotation_theshold = 0.025

@export var speed = 400

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	#direction = Input.get_vector("joystick_left", "joystick_right", "joystick_up", "joystick_down")
	direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	

	
	if (direction.length() > 0.1):
		var langle = lerp_angle(global_rotation, direction.angle() + deg_to_rad(90), 0.2)
		var sprite_rotation = langle - global_rotation		
		global_rotation = langle
		
		
		if (sprite_rotation > -1*rotation_theshold and sprite_rotation < rotation_theshold):
			ship_sprite.texture = ship_straight
		elif (sprite_rotation <= rotation_theshold):
			ship_sprite.texture = ship_left
		elif (sprite_rotation >= rotation_theshold):
			ship_sprite.texture = ship_right
	else:
		ship_sprite.texture = ship_straight
	
	
	var velocity = Vector2(0, abs(direction.length())).rotated(rotation+deg_to_rad(180)) * speed * delta
	translate(velocity)
	
	place_selector()

	
	
func place_selector():
	var int_part = Vector2i(floor(global_position.x), floor(global_position.y))
	var modulo64 = Vector2((int_part.x % 64) ,((int_part.y %64)))
	var new_pos = Vector2(global_position.x * 2 - modulo64.x - int_part.x + 32, global_position.y * 2 - modulo64.y - int_part.y + 32)
	
	selector_sprite.global_rotation = 0
	selector_sprite.global_position = new_pos

