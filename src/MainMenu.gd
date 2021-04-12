extends MarginContainer


var tmp
const section = "train"
const file_to_save = "user://config.cfg"


#func _ready():
#	var config = ConfigFile.new()
#	var _err = config.load(file_to_save)
#	var train = config.get_value(section, "saving_data", false)
#	config.save(file_to_save)
#	$HBoxContainer/VBoxContainer/HBoxContainer/CheckBox.pressed = train


func _on_Track1Button_pressed():
	tmp = get_tree().change_scene("res://src/Track1.tscn")


func _on_EmptyButton_pressed():
	tmp = get_tree().change_scene("res://src/EmptyMap.tscn")


func _on_SettingsButton_pressed():
	tmp = get_tree().change_scene("res://src/SettingsMenu.tscn")


func _on_CheckBox_pressed():
	Global.train_check = !Global.train_check

