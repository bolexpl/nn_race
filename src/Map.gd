extends Node


func _process(_delta):
	if Input.is_action_pressed("ui_cancel"):
		var _err = get_tree().change_scene("res://scenes/gui/MainMenu.tscn")
		var root = get_tree().root
		var level = root.get_node("Main")
		root.remove_child(level)
		level.call_deferred("free")

