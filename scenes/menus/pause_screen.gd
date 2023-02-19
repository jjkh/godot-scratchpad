extends Control

@onready var main_scene = get_node("/root/Main");

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		if get_tree().paused:
			resume()
		else:
			pause()

func pause():
	get_tree().paused = true;
	show();

func resume():
	hide();
	get_tree().paused = false;

func return_to_main_menu():
	resume()
	main_scene.return_to_main_menu()
