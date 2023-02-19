extends Node

@onready var main_menu = $MainMenu;
@onready var game_node = $Game;
@onready var dvd_screensaver = preload("res://scenes/dvd_screensaver/dvd_screensaver.tscn");
@onready var pause_screen = preload("res://scenes/menus/pause_screen.tscn");

func clear_game():
	for node in game_node.get_children():
		node.queue_free()

func start_scene(scene: PackedScene):
	clear_game()
	game_node.add_child(scene.instantiate())
	game_node.add_child(pause_screen.instantiate())
	main_menu.hide()

func return_to_main_menu():
	clear_game()
	main_menu.show()
