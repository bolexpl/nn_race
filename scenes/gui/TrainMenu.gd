extends Control


var x_file = null
var y_file = null


func _on_XButton_pressed():
	$XFile.popup()


func _on_YButton_pressed():
	$YFile.popup()


func _on_XFile_file_selected(path):
	x_file = path


func _on_YFile_file_selected(path):
	y_file = path


func _on_TrainButton_pressed():
	# TODO
	pass


func _on_BackButton_pressed():
	get_tree().change_scene("res://scenes/gui/MainMenu.tscn")



