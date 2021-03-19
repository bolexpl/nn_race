extends KinematicBody2D

# TODO sieć neuronowa
# input: 5 odległości do ścian, aktualna prędkość
# output: przyspieszenie i obrót

# input: x, y, 5 odległości s, v0
# output: przyspieszenie, kąt skrętu, droga możliwa po drodze maksymalnej

# opracować sieć i uczenie na podstawie pomiarów ręcznych

export var neural = false
export var working = true

# steering
export var wheel_base = 35  # Distance from front to rear wheel
export var steering_angle = 15  # Amount that front wheel turns, in degrees
# acceleration
export var engine_power = 800  # Forward acceleration force.
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
var labels = null
var label_texts = null
var ray_distances = [0,0,0,0,0]

func _ready():
	halfsize = wheel_base / 2
	rays = [$Forward, $Left, $Right, $Left2, $Right2]
	labels = [get_node("../ForwardLabel"),
			get_node("../LeftLabel"),
			get_node("../RightLabel"),
			get_node("../LeftLabel2"),
			get_node("../RightLabel2")]
	label_texts = ["Przód: ", "Lewa: ", "Prawa: ", "Lewa2: ", "Prawa2: "]

func _physics_process(delta):
	if not working:
		return
	distance += velocity.length() * delta
	get_node("../DistanceLabel").text = "Dystans: " + String(distance)
	cast_rays()
	
	# TODO pobranie wyniku z sieci neuronowej
	
	acceleration = Vector2.ZERO
	if(neural):
		set_input(-1, 1)
	else:
		get_input()
	apply_friction()
	calculate_steering(delta)
	velocity += acceleration * delta
	velocity = move_and_slide(velocity)


func cast_rays():
	for i in range(rays.size()):
		var c = rays[i].get_collider()
		if c == null:
			labels[i].text = label_texts[i] + "-9999"
		else:
			var pos = rays[i].get_collision_point()
			var tmp = position.distance_to(pos) - halfsize
			ray_distances[i] = tmp
			labels[i].text = label_texts[i] + String(tmp)


func set_input(turn_param, accel_param):
	var turn = 0
	if turn_param > 0:
		turn += 1
	if turn_param < 0:
		turn -= 1
	steer_angle = turn * deg2rad(steering_angle)
	if accel_param > 0:
		acceleration = transform.x * engine_power
	if accel_param < 0:
		acceleration = transform.x * braking


func get_input():
	var turn_param = 0
	var accel_param = 0
	if Input.is_action_pressed("steer_right"):
		turn_param += 1
	if Input.is_action_pressed("steer_left"):
		turn_param -= 1
	if Input.is_action_pressed("accelerate"):
		accel_param += 1
	if Input.is_action_pressed("brake"):
		accel_param -= 1
	set_input(turn_param, accel_param)


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


