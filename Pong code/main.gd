extends Node

var pelota

func nuevo_juego():
	pelota=get_node("Pelota")
	#$Jugador/Raqueta.position.x=0
	#$Jugador2/Raqueta.position.x=1136

	$HUD/CuentaAtras.show()
	$HUD/CuentaAtras2.show()

	for i in range(3):
		$HUD/CuentaAtras.text=str(3-i)
		$HUD/CuentaAtras2.text=str(3-i)
		await get_tree().create_timer(1).timeout
	
	$HUD/CuentaAtras.hide()
	$HUD/CuentaAtras2.hide()
	$Pelota.position=Vector2(1150.0/2,640.0/2)


func _ready():
	nuevo_juego()


# func _on_cancha_body_exited(_body):
# 	$HUD.puntos+=1
# 	$HUD/Puntos.text="Puntos: "+str($HUD.puntos)
# 	nuevo_juego()

func _on_cancha_j_1_body_entered(_body):
	$HUD.puntos_j2+=1
	$HUD/PuntosJ2.text="Puntos: "+str($HUD.puntos_j2)
	nuevo_juego()


func _on_cancha_j_2_body_entered(_body):
	$HUD.puntos_j1+=1
	$HUD/PuntosJ1.text="Puntos: "+str($HUD.puntos_j1)
	nuevo_juego()
