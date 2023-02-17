extends Control

@export var dvd_screensaver : PackedScene
@onready var main_node = get_node("..")

func start_dvd_screensaver():
	main_node.start_scene(dvd_screensaver)
