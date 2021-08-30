extends Node


var car = null
var sprite = null


func _process(_delta):
	if Input.is_action_pressed("ui_cancel"):
		var _err = get_tree().change_scene("res://scenes/gui/MainMenu.tscn")
		var root = get_tree().root
		var level = root.get_node("Map")
		root.remove_child(level)
		level.call_deferred("free")


func _on_Button_pressed():
	Global.trajectory = false
	var editableImage = Image.new()
	editableImage.copy_from(sprite.get_texture().get_data())
	
	var data = car.trajectory
	for i in range(data.size()):
		draw_circle(editableImage, data[i].x, data[i].y, 4)
	
	var dir = OS.get_system_dir(OS.SYSTEM_DIR_DESKTOP)
	dir = dir.replace("\\","/")
	var config = ConfigFile.new()
	var _err = config.load("user://config.cfg")
	var path = config.get_value(Global.SECTION, \
		"tr_file", dir + "/tr_file.png")
	editableImage.save_png(path)


func draw_circle(img:Image, x, y, r):
	img.lock()
	for i in range(x-r, x+r):
		for j in range(y-r, y+r):
			var tmp = sqrt(pow(i - x, 2) + pow(j - y, 2))
			if tmp <= r:
				img.set_pixel(i, j, Color.red)
	img.unlock()



