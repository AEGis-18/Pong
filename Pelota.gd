extends RigidBody2D

@export var rapidez=500
var direccion=Vector2(0.5,1)

#var direccion=Vector2(randf_range(-1,1),randf_range(-1,1))


func _ready():
	linear_velocity=Vector2(600,0)
	
func _physics_process(delta):
	var velocidad=rapidez*direccion*delta
	var colision = move_and_collide(velocidad)
	if colision!=null:
		direccion = direccion.bounce(colision.get_normal())

