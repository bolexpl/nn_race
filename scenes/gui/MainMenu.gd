extends Control


const section = "train"
const file_to_save = "user://config.cfg"


func _on_Track1_pressed():
	var scene = preload("res://scenes/levels/Track1.tscn").instance()
	change(scene, 184, 530, 0)


func _on_Track2_pressed():
	var scene = preload("res://scenes/levels/Track2.tscn").instance()
	change(scene, 662, 541, -50)


func _on_Empty_pressed():
	var scene = preload("res://scenes/levels/EmptyMap.tscn").instance()
	change(scene, 300, 300, 0)


func _on_Settings_pressed():
	var _err = get_tree().change_scene("res://scenes/gui/SettingsMenu.tscn")


func change(scene, x, y, r):
	var car = preload("res://scenes/Car.tscn").instance()
	car.position = Vector2(x, y)
	car.rotation_degrees = r
	var camera = Camera2D.new()
	camera.current = true
	car.add_child(camera)
	scene.add_child(car)
	
	var root = get_tree().root
	var level = root.get_node("MainMenu")
	root.remove_child(level)
	level.call_deferred("free")
	root.add_child(scene)


func _on_OptionButton_item_selected(index):
	Global.mode = index

