extends Node

var n_array
var l_count
var theta
var output
var biases
var rand
var x_min
var x_max


func _init(input_count, layer_count, neurons_array, x_min_p, x_max_p):
	self.rand = RandomNumberGenerator.new()
	self.rand.randomize()
	self.n_array = [input_count] + neurons_array
	self.l_count = layer_count + 1
	self.x_min = x_min_p
	self.x_max = x_max_p
	self.output = []
	self.theta = []
	self.biases = []
	# init theta to random values (neurony, wejścia)
	for i in range(1, self.l_count):
		var tmp = randn(self.n_array[i], self.n_array[i - 1])
		self.theta.append(tmp)
	# init biases
	for i in range(self.l_count - 1):
		self.biases.append([])
		self.biases[i].resize(self.n_array[i+1])
		for i2 in range(self.biases[i].size()):
			self.biases[i][i2] = rand.randf_range(self.x_min, self.x_max)
#			self.biases[i][i2] = rand.randfn()


func train(x, y, iter_count):
	# assign transposed input to input layer
	var a = []
	a.resize(self.l_count)
	a[0] = transpose(x)
	
	var error = []
	error.resize(self.l_count)
	for i_layer in range(self.l_count):
		error[i_layer] = []
	
	for _i_iteration in range(iter_count):
		# forward propagation to calculate output using sigmoid function
		for i_layer in range(1, self.l_count): # layers
			var tmp1 = matmul(self.theta[i_layer - 1], a[i_layer - 1])
			var result = []
			# matrix loops
			for i_neuron in range(tmp1.size()): # neurons
				result.append([])
				for i_example in range(tmp1[i_neuron].size()):
					# TODO bias do aktywacji
					tmp1[i_neuron][i_example] = tmp1[i_neuron][i_example] + biases[i_layer - 1][i_neuron]
					tmp1[i_neuron][i_example] = exp(-tmp1[i_neuron][i_example])
					result[i_neuron].append(1 / (1 + tmp1[i_neuron][i_example]))
			a[i_layer] = result
		
		# back propagation to calculate error
		error[self.l_count - 1] = subtract(a[self.l_count - 1], transpose(y))
		for i_layer in range(self.l_count - 2, 0, -1):
			var tmp1 = matmul(transpose(self.theta[i_layer]), error[i_layer + 1])
			var tmp2 = []
			tmp2.resize(a[i_layer].size())
			# matrix loops
			for i_neuron in range(a[i_layer].size()):
				tmp2[i_neuron] = []
				tmp2[i_neuron].resize(a[i_layer][i_neuron].size())
				for i_example in range(a[i_layer][i_neuron].size()):
					tmp2[i_neuron][i_example] = 1 - a[i_layer][i_neuron][i_example]
			error[i_layer] = multiply(multiply(tmp1, a[i_layer]), tmp2)
		
		# subtract partial derivatives from theta
		for i_layer in range(1, self.l_count):
			
			# poprawa wag
			var tmp1 = matmul(error[i_layer], transpose(a[i_layer - 1]))
			self.theta[i_layer - 1] = subtract(self.theta[i_layer - 1], tmp1)
			
			# poprawa biasów
			var x0 = 1
			for i_neuron in range(error[i_layer].size()):
				for i_example in range(error[i_layer][i_neuron].size()):
					var tmp2 = error[i_layer][i_neuron][i_example] * x0
					biases[i_layer-1][i_neuron] = biases[i_layer-1][i_neuron] - tmp2


func forward(x):
	# assign transposed input to input layer
	var a = []
	a.resize(self.l_count)
	a[0] = transpose(x)
	var error = []
	error.resize(self.l_count)
	for i in range(self.l_count):
		error[i] = []
	
	# forward propagation to calculate output using sigmoid function
	for i_layer in range(1, self.l_count):
		var tmp1 = matmul(self.theta[i_layer - 1], a[i_layer - 1])
		var result = []
		# matrix loops
		for i_neuron in range(tmp1.size()):
			result.append([])
			for i_example in range(tmp1[i_neuron].size()):
				# TODO bias do aktywacji
				tmp1[i_neuron][i_example] = tmp1[i_neuron][i_example] + biases[i_layer - 1][i_neuron]
				tmp1[i_neuron][i_example] = -exp(tmp1[i_neuron][i_example])
				result[i_neuron].append(1 / (1 + tmp1[i_neuron][i_example]))
		a[i_layer] = result
	self.output = a[self.l_count - 1]


static func get_min_max(x):
	var min_x = x[0][0]
	var max_x = x[0][0]
	for i in range(x.size()):
		for i2 in range(x[i].size()):
			var tmp = x[i][i2]
			if tmp < min_x:
				min_x = tmp
			if tmp > max_x:
				max_x = tmp
	return [min_x, max_x]


static func transpose(arr):
	var result = []
	var m = arr.size()
	var n = arr[0].size()
	for i in range(n):
		var tmp = []
		for j in range(m):
			tmp.append(arr[j][i])
		result.append(tmp)
	return result


func randn(n, m):
	var result = []
	for i in range(n):
		result.append([])
		for _j in range(m):
			result[i].append(rand.randf_range(self.x_min, self.x_max))
#			result[i].append(rand.randfn())
	return result


static func matmul(a, b):
	var matrix = zero_matrix(a.size(), b[0].size())
	for i in range(a.size()):
		for j in range(b[0].size()):
			for k in range(a[0].size()):
				matrix[i][j] = matrix[i][j] + a[i][k] * b[k][j]
	return matrix


static func multiply(a, b):
	var matrix = []
	matrix.resize(a.size())
	for i in range(a.size()):
		matrix[i] = []
		matrix[i].resize(a[i].size())
		for j in range(a[i].size()):
			matrix[i][j] = a[i][j] * b[i][j]
	return matrix


static func zero_matrix(nX, nY):
	var matrix = []
	for x in range(nX):
		matrix.append([])
		for _y in range(nY):
			matrix[x].append(0)
	return matrix


static func subtract(a, b):
	var matrix = []
	matrix.resize(a.size())
	for i in range(a.size()):
		matrix[i] = []
		matrix[i].resize(a[i].size())
		for j in range(a[i].size()):
			matrix[i][j] = a[i][j] - b[i][j]
	return matrix

# x1 / suma_x1
static func normalize(mat):
	var res = zero_matrix(mat.size(), mat[0].size())
	var cols = []
	
	cols.resize(mat[0].size())
	for col in range(mat[0].size()):
		cols[col] = 0.0
		for row in range(mat.size()):
			cols[col] = cols[col] + mat[row][col]
		
		for row in range(mat.size()):
			res[row][col] = mat[row][col] / cols[col]
	return res