extends Area2D


var count = 0
var label

func _ready():
	label = get_node("/root/Map/CanvasLayer/LapsLabel")


func _on_LapChecker_body_entered(_body):
	count += 1
	label.text = str(count)
