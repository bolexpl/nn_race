extends MarginContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Track1Button_pressed():
	get_tree().change_scene("res://Track1.tscn")


func _on_EmptyButton_pressed():
	get_tree().change_scene("res://EmptyMap.tscn")
