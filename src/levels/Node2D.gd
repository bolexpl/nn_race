extends Node2D


func _process(delta):
	update()


func _draw():
	var data = get_parent().car.trajectory
	for i in range(data.size()):
		print(data[i])
		draw_circle(data[i], 2, Color.red)
