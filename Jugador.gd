extends CharacterBody2D

@export var id:String
@export var velocidad = 600
var tamanho_pantalla:Vector2=Vector2.ZERO
var tamanho_jugador

func _ready():
	tamanho_pantalla=get_viewport_rect().size
	tamanho_jugador=$CollisionShape2D.shape.extents.y
	print()



# func _process(delta):
# 	get_input()

# 	if ($Raqueta.position.y<=0 and direccion==-1) or ($Raqueta.position.y+130>=tamanho_pantalla.y and direccion==1):
# 		pass
# 	else:
# 		$Raqueta.position.y+=direccion*velocidad*delta

# 	move_and_slide()


# func get_input():
# 	if Input.is_action_pressed('ui_down'):
# 		direccion = 1
# 	if Input.is_action_pressed('ui_up'):
# 		direccion = -1


	
func _process(delta):
	var direccion = Vector2.ZERO
	
	if Input.is_action_pressed("arriba_%s" %[id]):
		direccion.y-=1
	if Input.is_action_pressed("abajo_%s" %[id]):
		direccion.y+=1
	
	position+= direccion*velocidad*delta
	position.y=clamp(position.y,0,tamanho_pantalla.y-tamanho_jugador)
