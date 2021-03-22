extends Node


const Neural = preload("res://Neural.gd")


func _ready():
	var x = [[0, 0, 1],
		[1, 0, 1],
		[1, 1, 1],
		[0, 1, 1]]
	var y = [[0],
		 [1],
		 [1],
		 [0]]
	var n_array = [3, 1]
	var iter_count = 1000
	var nn = Neural.new(len(x[0]), len(n_array), n_array)
	nn.forward(x)
	print(nn.output)
	nn.train(x, y, iter_count)
	nn.forward(x)
	print(nn.output)


