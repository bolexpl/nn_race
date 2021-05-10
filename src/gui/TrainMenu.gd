extends Control


const Neural = preload("res://src/Neural.gd")
var x_file = "C:/Users/bolek/Desktop/x.txt"
var y_file = "C:/Users/bolek/Desktop/y.txt"
var file_index = 0
var x_thread
var y_thread
var train_thread
var x
var y


func _ready():
	$ColorRect/Panel/VBoxContainer/XButton.text = x_file
	$ColorRect/Panel/VBoxContainer/YButton.text = y_file


func _on_XButton_pressed():
	$FileDialog.popup()
	file_index = 0


func _on_YButton_pressed():
	$FileDialog.popup()
	file_index = 1


func _on_FileDialog_file_selected(path):
	if file_index == 0:
		x_file = path
		$ColorRect/Panel/VBoxContainer/XButton.text = path
	else:
		y_file = path
		$ColorRect/Panel/VBoxContainer/YButton.text = path


func _on_TrainButton_pressed():
	if x_file == null or y_file == null:
		$ErrorDialog.popup()
		return
	x_thread = Thread.new()
	y_thread = Thread.new()
	x_thread.start(self, "load_data", x_file)
	y_thread.start(self, "load_data", y_file)
	x = x_thread.wait_to_finish()
	y = y_thread.wait_to_finish()
	
	if x == null or y == null:
		$ErrorDialog.popup()
		return
	
	var check = $ColorRect/Panel/VBoxContainer/CheckBox.pressed
#	train_thread = Thread.new()
#	train_thread.start(self, "train", check)
#	train_thread.wait_to_finish()
	train(check)
	$FinishDialog.popup_centered()


func train(check):
	# tworzenie sieci
	var n_array = [10, 2]
	var nn = Neural.new(len(x[0]), len(n_array), n_array)
	# generowanie lub wczytanie wag
	if check:
		nn.generate_weights(-1, 1)
		nn.save_weights()
	else:
		nn.load_weights()
	# trenowanie
	nn.train(x, y, 1)
	# zapis
	nn.save_weights()


func load_data(path):
	var data = []
	var f = File.new()
	var err = f.open(path, File.READ)
	if err:
		return null
	while not f.eof_reached():
		var line = f.get_line()
		var arr = line.split(" ", false)
		var tmp = []
		for i in range(arr.size()):
			tmp.append(float(arr[i]))
		if tmp.size() > 0:
			data.append(tmp)
	f.close()
	return data


func _on_BackButton_pressed():
	var _err = get_tree().change_scene("res://scenes/gui/MainMenu.tscn")


