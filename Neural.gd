extends Node

var n_array
var l_count
var theta
var output
var biases
var rand


func _init(input_count, layer_count, neurons_array):
	rand = RandomNumberGenerator.new()
	rand.randomize()
	self.n_array = [input_count] + neurons_array
	self.l_count = layer_count + 1
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
			self.biases[i][i2] = rand.randfn()


func train(x, y, iter_count):
	# assign transposed input to input layer
	var a = []
	a.resize(self.l_count)
	a[0] = transpose(x)
	var error = []
	error.resize(self.l_count)
	for i in range(self.l_count):
		error[i] = []
	
	for _i in range(iter_count):
		# forward propagation to calculate output using sigmoid function
		for i2 in range(1, self.l_count): # layers
			var myk1 = matmul(self.theta[i2 - 1], a[i2 - 1])
			var result = []
			# matrix loops
			for i3 in range(myk1.size()): # neurons
				result.append([])
				for i4 in range(myk1[i3].size()):
					# TODO bias do aktywacji
					myk1[i3][i4] = exp(-myk1[i3][i4])
					result[i3].append(1 / (1 + myk1[i3][i4]))
			a[i2] = result
		
		# bias takim samym wzorem poprawiać
		
		# back propagation to calculate error
		error[self.l_count - 1] = subtract(a[self.l_count - 1], transpose(y))
		for i2 in range(self.l_count - 2, 0, -1):
			var tmp1 = matmul(transpose(self.theta[i2]), error[i2 + 1])
			var tmp2 = []
			# matrix loops
			tmp2.resize(a[i2].size())
			for i3 in range(a[i2].size()):
				tmp2[i3] = []
				tmp2[i3].resize(a[i2][i3].size())
				for i4 in range(a[i2][i3].size()):
					tmp2[i3][i4] = 1 - a[i2][i3][i4]
			error[i2] = multiply(multiply(tmp1, a[i2]), tmp2)
		
		# subtract partial derivatives from theta
		for i2 in range(1, self.l_count):
			var myk2 = matmul(error[i2], transpose(a[i2 - 1]))
			var myk3 = self.theta[i2 - 1]
			self.theta[i2 - 1] = subtract(myk3, myk2)
			# w = w - (error * input)
			# b = b - (error * -1)


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
	for i2 in range(1, self.l_count):
		var tmp1 = matmul(self.theta[i2 - 1], a[i2 - 1])
		var result = []
		# matrix loops
		for i3 in range(tmp1.size()):
			result.append([])
			for i4 in range(tmp1[i3].size()):
				# TODO bias do aktywacji
				tmp1[i3][i4] = -exp(tmp1[i3][i4])
				result[i3].append(1 / (1 + tmp1[i3][i4]))
		a[i2] = result
	self.output = a[self.l_count - 1]


func transpose(arr):
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
			result[i].append(rand.randfn())
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

