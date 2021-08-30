extends Control


const config_file = "user://config.cfg"
var file_index = 0
var sensor_file
var inputs_file
var tr_file


func _ready():
	$MainPanel/Panel/VBoxContainer/CheckBox.pressed = Global.norm
	$MainPanel/Panel/VBoxContainer/CheckBox2.pressed = Global.trajectory
	var dir = OS.get_system_dir(OS.SYSTEM_DIR_DESKTOP)
	dir = dir.replace("\\","/")
	var config = ConfigFile.new()
	var _err = config.load(config_file)
	sensor_file = config.get_value(Global.SECTION, "sensors_file",\
			dir + "/sensors_file.csv")
	inputs_file = config.get_value(Global.SECTION, "user_input_file",\
			dir + "/inputs_file.csv")
	tr_file = config.get_value(Global.SECTION, "tr_file",\
			dir + "/tr_file.png")
	$MainPanel/Panel/VBoxContainer/SensorsButton.text = sensor_file
	$MainPanel/Panel/VBoxContainer/InputsButton.text = inputs_file
	config.save(config_file)


func _on_BackButton_pressed():
	var _tmp = get_tree().change_scene("res://scenes/gui/MainMenu.tscn")


func _on_SaveButton_pressed():
	Global.norm = $MainPanel/Panel/VBoxContainer/CheckBox.pressed
	var config = ConfigFile.new()
	if config.load(config_file) == OK:
		config.set_value(Global.SECTION, "sensors_file", sensor_file)
		config.set_value(Global.SECTION, "user_input_file", inputs_file)
		config.set_value(Global.SECTION, "tr_file", tr_file)
		config.save(config_file)
	var _tmp = get_tree().change_scene("res://scenes/gui/MainMenu.tscn")


func _on_FileDialog_file_selected(path):
	path = path.replace("\\","/")
	if file_index == 0:
		sensor_file = path
		$MainPanel/Panel/VBoxContainer/SensorsButton.text = path
	if file_index == 1:
		inputs_file = path
		$MainPanel/Panel/VBoxContainer/InputsButton.text = path
	else:
		tr_file = path
		$MainPanel/Panel/VBoxContainer/TrajectoryButton.text = path


func _on_SensorsButton_pressed():
	file_index = 0
	$FileDialog.current_path = sensor_file
	$FileDialog.popup()


func _on_InputsButton_pressed():
	file_index = 1
	$FileDialog.current_path = inputs_file
	$FileDialog.popup()


func _on_TrajectoryButton_pressed():
	file_index = 2
	$FileDialog.current_path = tr_file
	print(tr_file)
	$FileDialog.popup()

