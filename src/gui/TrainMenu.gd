extends Control


const Neural = preload("res://src/Neural.gd")
var x_file = "/home/bolek/x.txt"
var y_file = "/home/bolek/y.txt"
var x2_file = "/home/bolek/x.txt"
var y2_file = "/home/bolek/y_godot.txt"
var file_index = 0
var x_thread
var y_thread
var train_thread
var test_thread
var x
var y


func _ready():
	$ColorRect/HSplitContainer/Panel/VBoxContainer/XButton.text = x_file
	$ColorRect/HSplitContainer/Panel/VBoxContainer/YButton.text = y_file
	$ColorRect/HSplitContainer/Panel2/VBoxContainer/InButton.text = x2_file
	$ColorRect/HSplitContainer/Panel2/VBoxContainer/OutButton.text = y2_file


func _on_XButton_pressed():
	$FileDialog.popup()
	file_index = 0


func _on_YButton_pressed():
	$FileDialog.popup()
	file_index = 1


func _on_InButton_pressed():
	$FileDialog.popup()
	file_index = 2


func _on_OutButton_pressed():
	$SaveDialog.popup()


func _on_FileDialog_file_selected(path):
	match file_index:
		0:
			x_file = path
			$ColorRect/HSplitContainer/Panel/VBoxContainer/XButton.text = path
		1:
			y_file = path
			$ColorRect/HSplitContainer/Panel/VBoxContainer/YButton.text = path
		2:
			x2_file = path
			$ColorRect/HSplitContainer/Panel2/VBoxContainer/InButton.text = path


func _on_SaveDialog_file_selected(path):
	y2_file = path
	$ColorRect/HSplitContainer/Panel2/VBoxContainer/OutButton.text = path


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
	
	var check = $ColorRect/HSplitContainer/Panel/VBoxContainer/CheckBox.pressed
	train_thread = Thread.new()
	train_thread.start(self, "train", check)
	train_thread.wait_to_finish()
#	train(check)
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
	nn.normalize(x)
	nn.train(x, y, 1)
	# zapis
	nn.save_weights()


func _on_TestBt_pressed():
	if x2_file == null or y2_file == null:
		$ErrorDialog.popup()
		return
	x_thread = Thread.new()
	x_thread.start(self, "load_data", x2_file)
	x = x_thread.wait_to_finish()
	
	if x == null:
		$ErrorDialog.popup()
		return
	
#	test_net(null)
	test_thread = Thread.new()
	test_thread.start(self, "test_net", null)
	if test_thread.wait_to_finish():
		$FinishDialog.popup_centered()
	else:
		$TestErrorDialog.popup_centered()


func test_net(_param):
	# tworzenie sieci
	var n_array = [10, 2]
	var nn = Neural.new(len(x[0]), len(n_array), n_array)
	# wczytanie wag
	nn.load_weights()
	nn.normalize(x)
	# trenowanie
	nn.forward(x)
	# zapis
	return save_data(y2_file, nn.output)


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


func save_data(path, data):
	var f = File.new()
	var err = f.open(path, File.WRITE)
	if err:
		return false
	
	for i in range(data[0].size()):
		f.store_line("%f %f" % [data[0][i], data[1][i]])
	
	f.close()
	return true
	


func _on_BackButton_pressed():
	var _err = get_tree().change_scene("res://scenes/gui/MainMenu.tscn")
