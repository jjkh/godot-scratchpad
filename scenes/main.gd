extends Node

@onready var pause_screen = $PauseScreen;
@onready var main_menu = $MainMenu;
@onready var game_node = $Game;
@onready var dvd_screensaver = preload("res://scenes/dvd_screensaver/dvd_screensaver.tscn");

var in_game := false

func _unhandled_input(event):
	if not in_game:
		return
		
	if event.is_action_pressed("ui_cancel"):
		if get_tree().paused:
			pause_screen.resume()
		else:
			pause_screen.pause()

func clear_game():
	for node in game_node.get_children():
		node.queue_free()
	in_game = false

func start_scene(scene: PackedScene):
	clear_game()
	game_node.add_child(scene.instantiate())
	main_menu.hide()
	in_game = true

func return_to_main_menu():
	clear_game()
	main_menu.show()
