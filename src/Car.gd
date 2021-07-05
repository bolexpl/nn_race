extends KinematicBody2D

# TODO sieć neuronowa
# input: 5 odległości do ścian, aktualna prędkość
# output: przyspieszenie i obrót

# opracować sieć i uczenie na podstawie pomiarów ręcznych
const Neural = preload("res://native/Neural.gdns")

export var neural = false
export var working = true

# steering
export var wheel_base = 35  # Distance from front to rear wheel
export var steering_angle = 25  # Amount that front wheel turns, in degrees
export var steering_scale = 2
# acceleration
export var engine_power = 600  # Forward acceleration force.
# friction, drag
export var friction = -0.9
export var drag = -0.0015
# brake
export var braking = -450
export var max_speed_reverse = 250
# drift
export var slip_speed = 400  # Speed where traction is reduced
export var traction_fast = 0.1  # High-speed traction
export var traction_slow = 0.7  # Low-speed traction

var halfsize
var velocity = Vector2.ZERO
var acceleration = Vector2.ZERO
var steer_angle
var distance = 0
var rays = null

var nn
var nn_in_vector = [0, 0, 0, 0, 0, 0]

var train_file = null
var result_file = null
var train_file_name = null
var result_file_name = null
var file_count


func _ready():
	halfsize = wheel_base / 2
	
	if Global.mode == Global.MEASURE_MODE: # zapis pomiarów
		var config = ConfigFile.new()
		var _err = config.load("user://config.cfg")
		train_file_name = config.get_value("train", "training_data", "user://train_file.txt")
		result_file_name = config.get_value("train", "result_data", "user://result_file.txt")
		
		train_file = File.new()
		result_file = File.new()
		train_file.open(train_file_name, File.WRITE)
		result_file.open(result_file_name, File.WRITE)
		file_count = 0
	
	rays = [$Left2, $Left, $Forward, $Right, $Right2]
#	var n_array = [10, 2]
#	nn = Neural.new(6, len(n_array), n_array)
#	nn.load_weights()
	nn = Neural.new()


func _exit_tree():
	if Global.mode == Global.MEASURE_MODE:
		train_file.close()
		result_file.close()


func _physics_process(delta):
	if not working:
		return
	
	distance += velocity.length() * delta
	acceleration = Vector2.ZERO
	if(neural):
		neural_input()
	else:
		get_input()
	apply_friction()
	calculate_steering(delta)
	velocity += acceleration * delta
	velocity = move_and_slide(velocity)


func set_input(turn_param, accel_param):
	if Global.mode == Global.MEASURE_MODE:
		if abs(accel_param) >= 0.1:
			file_count = file_count + 1
			print(file_count)
			result_file.store_string(str(turn_param) + ";" + str(accel_param)+"\n")
			write_data()
	
	var turn = turn_param
	steer_angle = turn * deg2rad(steering_angle)
	if accel_param > 0:
		acceleration = transform.x * engine_power * accel_param
	if accel_param < 0:
		acceleration = transform.x * braking * (-accel_param)


func neural_input():
	for i in range(rays.size()):
		var tmp
		var c = rays[i].get_collider()
		if c == null:
			tmp = 700
		else:
			var pos = rays[i].get_collision_point()
			tmp = position.distance_to(pos) - halfsize
		nn_in_vector[i] = tmp
	nn_in_vector[5] = acceleration.length()
#	var tmp = [nn_in_vector]
#	nn.normalize(tmp)
#	nn.forward(tmp)
	var output = nn.predict(nn_in_vector)
	set_input(output[0], output[1])


func get_input():
	var turn_param = 0
	var accel_param = 0
	if Input.is_action_pressed("ui_right"):
		turn_param += 1
	if Input.is_action_pressed("ui_left"):
		turn_param -= 1
	if Input.is_action_pressed("ui_up"):
		accel_param += 1
	if Input.is_action_pressed("ui_down"):
		accel_param -= 1
		
	if Input.is_action_pressed("turn_right"):
		turn_param += Input.get_action_strength("turn_right")
	if Input.is_action_pressed("turn_left"):
		turn_param -= Input.get_action_strength("turn_left")
	if Input.is_action_pressed("accelerate"):
		accel_param += Input.get_action_strength("accelerate")
	if Input.is_action_pressed("brake"):
		accel_param -= Input.get_action_strength("brake")
	
	set_input(turn_param, accel_param)
	if Input.is_action_pressed("turn_right") or Input.is_action_pressed("turn_left"):
		turn_param = turn_param * steering_scale


func apply_friction():
	if velocity.length() < 5:
		velocity = Vector2.ZERO
	var friction_force = velocity * friction
	var drag_force = velocity * velocity.length() * drag
	if velocity.length() < 100:
		friction_force *= 3
	acceleration += drag_force + friction_force


func calculate_steering(delta):
	var rear_wheel = position - transform.x * wheel_base / 2.0
	var front_wheel = position + transform.x * wheel_base / 2.0
	rear_wheel += velocity * delta
	front_wheel += velocity.rotated(steer_angle) * delta
	var new_heading = (front_wheel - rear_wheel).normalized()
	var traction = traction_slow
	if velocity.length() > slip_speed:
		traction = traction_fast
	var d = new_heading.dot(velocity.normalized())
	if d > 0:
		velocity = velocity.linear_interpolate(new_heading * velocity.length(), traction)
	if d < 0:
		velocity = -new_heading * min(velocity.length(), max_speed_reverse)
	rotation = new_heading.angle()


func write_data():
	for i in range(rays.size()):
		var tmp
		var c = rays[i].get_collider()
		if c == null:
			tmp = 600
		else:
			var pos = rays[i].get_collision_point()
			tmp = position.distance_to(pos) - halfsize
		train_file.store_string(str(tmp))
		if i < rays.size():
			train_file.store_string(";")
	train_file.store_string(str(velocity.length()))
	train_file.store_string("\n")
