extends Control


const Car = preload("res://scenes/Car.tscn")
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
	var car = Car.instance()
	car.position = Vector2(x, y)
	car.rotation_degrees = r
	var camera = Camera2D.new()
	camera.current = true
	car.add_child(camera)
	scene.add_child(car)
	
	Global.mode = $MainPanel/HSplitContainer/Panel/VBoxContainer/OptionButton.selected
	match Global.mode:
		Global.MANUAL_MODE:
			car.working = true
			car.neural = false
		Global.NEURAL_MODE:
			car.working = true
			car.neural = true
		Global.RACE_MODE:
			car.working = true
			car.neural = false
			var car2 = Car.instance()
			car2.position = Vector2(x, y)
			car2.rotation_degrees = r
			car2.working = true
			car2.neural = true
			scene.add_child(car2)
		Global.MEASURE_MODE:
			car.working = true
			car.neural = false
	
	var root = get_tree().root
	var level = root.get_node("MainMenu")
	root.remove_child(level)
	level.call_deferred("free")
	root.add_child(scene)


func _on_Exit_pressed():
	get_tree().quit()
