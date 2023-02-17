extends ColorRect

@onready var main_menu_scene = get_node("..");

func pause():
	get_tree().paused = true;
	show();

func resume():
	hide();
	get_tree().paused = false;

func return_to_main_menu():
	resume()
	main_menu_scene.return_to_main_menu()
