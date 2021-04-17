extends Control


const section = "train"
const file_to_save = "user://config.cfg"


func _ready():
	var config = ConfigFile.new()
	var _err = config.load(file_to_save)
	var train = config.get_value(section, "training_data", "user://train_file.txt")
	var result = config.get_value(section, "result_data", "user://result_file.txt")
#	config.set_value(section, "training_data", train)
#	config.set_value(section, "result_data", result)
	config.save(file_to_save)
	$MainPanel/Panel/VBoxContainer/TrainFile.text = train
	$MainPanel/Panel/VBoxContainer/ResultFile.text = result


func _on_BackButton_pressed():
	var _tmp = get_tree().change_scene("res://src/MainMenu.tscn")


func _on_SaveButton_pressed():
	var config = ConfigFile.new()
	if config.load(file_to_save) == OK:
		var train = $MainPanel/Panel/VBoxContainer/TrainFile.text
		var result = $MainPanel/Panel/VBoxContainer/ResultFile.text
		config.set_value(section, "training_data", train)
		config.set_value(section, "result_data", result)
		config.save(file_to_save)

