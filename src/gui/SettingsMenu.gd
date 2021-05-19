extends Control


const section = "train"
const file_to_save = "user://config.cfg"


func _ready():
	var config = ConfigFile.new()
	var _err = config.load(file_to_save)
	var train = config.get_value(section, "training_data", "user://train_file.csv")
	var result = config.get_value(section, "result_data", "user://result_file.csv")
	var save_net = config.get_value(section, "save_net", "user://save_net.json")
	var load_net = config.get_value(section, "load_net", "user://load_net.json")
	config.save(file_to_save)
	$MainPanel/Panel/VBoxContainer/TrainFile.text = train
	$MainPanel/Panel/VBoxContainer/ResultFile.text = result
	$MainPanel/Panel/VBoxContainer/SaveNet.text = save_net
	$MainPanel/Panel/VBoxContainer/LoadNet.text = load_net


func _on_BackButton_pressed():
	var _tmp = get_tree().change_scene("res://scenes/gui/MainMenu.tscn")


func _on_SaveButton_pressed():
	var config = ConfigFile.new()
	if config.load(file_to_save) == OK:
		var train = $MainPanel/Panel/VBoxContainer/TrainFile.text
		var result = $MainPanel/Panel/VBoxContainer/ResultFile.text
		var save_net = $MainPanel/Panel/VBoxContainer/SaveNet.text
		var load_net = $MainPanel/Panel/VBoxContainer/LoadNet.text
		config.set_value(section, "training_data", train)
		config.set_value(section, "result_data", result)
		config.set_value(section, "save_net", save_net)
		config.set_value(section, "load_net", load_net)
		config.save(file_to_save)
	var _tmp = get_tree().change_scene("res://scenes/gui/MainMenu.tscn")

