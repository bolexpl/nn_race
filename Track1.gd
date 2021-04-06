extends Node


const Neural = preload("res://Neural.gd")


# zmiany:
# - normalizacja x
# - normalizacja y
# - generowanie z 
# - biasy

func _ready():
	pass
	# min 20 par do 30
	# 80% do trenowania
#	var x2 = [[0, 0, 1],
#		[1, 0, 1],
#		[1, 1, 1],
#		[0, 1, 1]]
#	var y2 = [[0],
#		[1],
#		[1],
#		[0]]
	
#	var x = []
#	var y = []
#	x.resize(20)
#	y.resize(x.size())
#	for row in range(x.size()):
#		x[row] = []
#		x[row].resize(3)
#		x[row][0] = val()
#		x[row][1] = val()
#		x[row][2] = val()
#		y[row] = [x[row][0]]
	
#	var n_array = [3, 1]
#	var iter_count = 1000
#	var x_bounds = Neural.get_min_max(Neural.normalize(x))
#	var nn = Neural.new(len(x[0]), len(n_array), n_array, x_bounds[0], x_bounds[1])
#	var nn = Neural.new(len(x[0]), len(n_array), n_array, 0, 1)
	
#	nn.train(Neural.normalize(x), y, iter_count)
#	nn.train(x2, y2, iter_count)
	
#	nn.forward(Neural.normalize(x2))
#	nn.forward(x2)
#	print(nn.output)

#	get_tree().quit()


func val():
	return randi() % 2
