extends StaticBody2D

func _ready():
	get_tree().get_root().connect("size_changed", on_root_resize)

func on_root_resize():
	$Right.position.x = get_viewport().get_visible_rect().size.x
	$Bottom.position.y = get_viewport().get_visible_rect().size.y
