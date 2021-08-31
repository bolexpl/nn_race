extends Node2D


func _process(_delta):
	update()


func _draw():
	var data = get_parent().car.trajectory
	for i in range(data.size()):
		draw_circle(data[i], 4, Color.red)
