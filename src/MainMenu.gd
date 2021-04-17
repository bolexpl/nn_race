extends Control


const section = "train"
const file_to_save = "user://config.cfg"


func _ready():
	$MainPanel/HSplitContainer/Panel/VBoxContainer/CheckBox.pressed = Global.train_check


func _on_Track1_pressed():
	var _tmp = get_tree().change_scene("res://src/Track1.tscn")


func _on_Empty_pressed():
	var _tmp = get_tree().change_scene("res://src/EmptyMap.tscn")


func _on_Settings_pressed():
	var _tmp = get_tree().change_scene("res://src/SettingsMenu.tscn")


func _on_CheckBox_pressed():
	Global.train_check = !Global.train_check
	$MainPanel/HSplitContainer/Panel/VBoxContainer/CheckBox.pressed = Global.train_check

