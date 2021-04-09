extends MarginContainer


var tmp


func _on_Track1Button_pressed():
	tmp = get_tree().change_scene("res://src/Track1.tscn")


func _on_EmptyButton_pressed():
	tmp = get_tree().change_scene("res://src/EmptyMap.tscn")


func _on_SettingsButton_pressed():
	tmp = get_tree().change_scene("res://src/SettingsMenu.tscn")
