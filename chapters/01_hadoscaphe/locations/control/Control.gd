extends Node2D


onready var current_chapter = get_node("..")
onready var hud = current_chapter.hud
onready var inventory = hud.inventory


func _ready():
	# Initialization
	current_chapter.set_ship_power(current_chapter.ship_power)
	# Left door initialization.
	$DoorLeft.is_active = current_chapter.had_doors[$DoorLeft.door_id][0]
	$DoorLeft.is_opened = current_chapter.had_doors[$DoorLeft.door_id][1]
	$DoorLeft.initialize()


func initialize_light():
	# Tint the objects which aren't the set.
	if current_chapter.ship_power == "day":
		pass
	else:
		pass
	# initialize the animated objects (animations).
	$DoorLeft/AnimationPlayer.play(current_chapter.ship_power)
	$Background/AnimationPlayer.play(current_chapter.ship_power)
