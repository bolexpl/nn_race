extends Control


const Neural = preload("res://src/Neural.gd")
var x_file = null
var y_file = null
var index = 0


func _on_XButton_pressed():
	$FileDialog.popup()
	index = 0


func _on_YButton_pressed():
	$FileDialog.popup()
	index = 1


func _on_XFile_file_selected(path):
	if index == 0:
		x_file = path
		$ColorRect/Panel/VBoxContainer/XButton.text = path
	else:
		y_file = path
		$ColorRect/Panel/VBoxContainer/YButton.text = path


func _on_TrainButton_pressed():
	# TODO
	var check = $ColorRect/Panel/VBoxContainer/CheckBox.pressed
	# load x
	var x = load_data(x_file)
	# load y
	
#	var n_array = [10, 1]
#	var nn = Neural.new(len(x[0]), len(n_array), n_array, -1, 1, check)


func load_data(path):
	var f = File.new()
	var err = f.open(path, File.READ)
	
	


func _on_BackButton_pressed():
	var _err = get_tree().change_scene("res://scenes/gui/MainMenu.tscn")



