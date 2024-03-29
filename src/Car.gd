extends KinematicBody2D

const Neural = preload("res://native/Neural.gdns")

export var neural = false

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

var train_file = null
var result_file = null
var train_file_name = null
var result_file_name = null
var file_count

var rays = null
var nn
var trajectory = []
var last_trajectory_time = null
var tr_elapsed_time = 0

func _ready():
	halfsize = wheel_base / 2
	
	if neural:
		$Sprite.texture = load("res://assets/car_red_small_1.png")
	
	if Global.mode == Global.MEASURE_MODE: # zapis pomiarów
		var dir = OS.get_system_dir(OS.SYSTEM_DIR_DESKTOP)
		dir = dir.replace("\\","/")
		var config = ConfigFile.new()
		var _err = config.load("user://config.cfg")
		train_file_name = config.get_value(Global.SECTION, \
			"sensors_file", dir + "/sensors_file.csv")
		result_file_name = config.get_value(Global.SECTION, \
			"user_input_file", dir + "/inputs_file.csv")
		
		train_file = File.new()
		result_file = File.new()
		train_file.open(train_file_name, File.WRITE)
		result_file.open(result_file_name, File.WRITE)
		file_count = 0
	
	rays = [$Left0, $Left15, $Left30, \
			$Left45, $Left60, $Left75, \
			$Forward,\
			$Right75, $Right60, $Right45, \
			$Right30, $Right15, $Left0]
	nn = Neural.new()


func _exit_tree():
	if Global.mode == Global.MEASURE_MODE:
		train_file.close()
		result_file.close()


func _physics_process(delta):
	if Global.trajectory:
		tr_elapsed_time += delta
		if tr_elapsed_time >= 0.05:
			trajectory.append(global_position)
			tr_elapsed_time = 0
	
	acceleration = Vector2.ZERO
	if(neural):
		neural_input()
	else:
		get_input()
	apply_friction()
	calculate_steering(delta)
	velocity += acceleration * delta
	velocity = move_and_slide(velocity)


#func _draw():
#	for i in trajectory:
#		draw_circle(i, 900, Color.red)


func set_input(turn_param, accel_param):
	if Global.mode == Global.MEASURE_MODE:
		if abs(velocity.length()) > 0:
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
	var nn_in_vector = get_sensor_data()
	nn_in_vector = nn.norm(nn_in_vector)
	var output = nn.predict(nn_in_vector, Global.gd_net_ver)
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
	var values = get_sensor_data()
	if Global.norm:
		values = nn.norm(values)
	for i in range(values.size()):
		train_file.store_string(str(values[i]))
		if i < values.size() - 1:
			train_file.store_string(";")
	train_file.store_string("\n")


func get_sensor_data():
	var values = []
	values.resize(rays.size() + 1)
	for i in range(0, values.size()-1):
		var tmp
		var c = rays[i].get_collider()
		if c == null:
			tmp = 650
		else:
			var pos = rays[i].get_collision_point()
			tmp = position.distance_to(pos)
		values[i] = tmp
	values[values.size() - 1] = velocity.length()
	return values




