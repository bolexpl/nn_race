extends Control


const section = "train"
const config_file = "user://config.cfg"
var file_index = 0
var sensor_file
var inputs_file


func _ready():
	var dir = OS.get_system_dir(OS.SYSTEM_DIR_DESKTOP)
	$FileDialog.current_dir = dir
	var config = ConfigFile.new()
	var _err = config.load(config_file)
	sensor_file = config.get_value(section, "sensors_file", dir + "/sensors_file.csv")
	inputs_file = config.get_value(section, "user_input_file", dir + "/user_input_file.csv")
	$MainPanel/Panel/VBoxContainer/SensorsButton.text = sensor_file
	$MainPanel/Panel/VBoxContainer/InputsButton.text = inputs_file
	config.save(config_file)


func _on_BackButton_pressed():
	var _tmp = get_tree().change_scene("res://scenes/gui/MainMenu.tscn")


func _on_SaveButton_pressed():
	var config = ConfigFile.new()
	if config.load(config_file) == OK:
		var train = $MainPanel/Panel/VBoxContainer/TrainFile.text
		config.set_value(section, "sensors_file", sensor_file)
		config.set_value(section, "user_input_file", inputs_file)
		config.save(config_file)
	var _tmp = get_tree().change_scene("res://scenes/gui/MainMenu.tscn")


func _on_FileDialog_file_selected(path):
	if file_index == 0:
		sensor_file = $FileDialog.path
		$MainPanel/Panel/VBoxContainer/SensorsButton.text = path
	else:
		inputs_file = $FileDialog.path
		$MainPanel/Panel/VBoxContainer/InputsButton.text = path


func _on_SensorsButton_pressed():
	file_index = 0
	$FileDialog.popup()


func _on_InputsButton_pressed():
	file_index = 1
	$FileDialog.popup()
