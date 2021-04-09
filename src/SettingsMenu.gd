extends MarginContainer


const section = "train"
const file_to_save = "user://config.cfg"


func _ready():
	var config = ConfigFile.new()
	var err = config.load(file_to_save)
	var train = config.get_value(section, "training_data", "user://train_file.txt")
	var result = config.get_value(section, "result_data", "user://result_file.txt")
	config.set_value(section, "training_data", train)
	config.set_value(section, "result_data", result)
	config.save(file_to_save)
	$VBoxContainer2/HBoxContainer2/TrainFile.text = train
	$VBoxContainer2/HBoxContainer/ResultFile.text = result


func _on_BackButton_pressed():
	var tmp = get_tree().change_scene("res://src/MainMenu.tscn")


func _on_SaveButton_pressed():
	var config = ConfigFile.new()
	var err = config.load(file_to_save)
	if err == OK:
		var train = $VBoxContainer2/HBoxContainer2/TrainFile.text
		var result = $VBoxContainer2/HBoxContainer/ResultFile.text
		config.set_value(section, "training_data", train)
		config.set_value(section, "result_data", result)
		config.save(file_to_save)


