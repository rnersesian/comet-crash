extends Node2D

@export var player: PlayerInfo
@export var opponent: PlayerInfo


@onready var tilemap: TileMap = get_node("Ground")


# Called when the node enters the scene tree for the first time.
func _ready():
	setup_tilemap_conf()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func setup_tilemap_conf():
	#for i in range(tilemap.get_layers_count()):
		#for j in range(tilemap.get_used_rect())
	print(tilemap.get_used_rect())

