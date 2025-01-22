extends ColorRect

var direccion = 0
var velocidad = 400

func _process(delta):
	get_input()

	if self.position.y<=0 and direccion==-1:
		pass
	else:
		self.position.y+=direccion*velocidad*delta


func get_input():
	if Input.is_action_pressed('ui_down'):
		direccion = 1
	if Input.is_action_pressed('ui_up'):
		direccion = -1
