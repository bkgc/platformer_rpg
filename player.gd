extends KinematicBody2D

var speed=200
var movimiento=Vector2()
var gravedad=500
func _process(delta):
	movimiento.x=0
	movimiento.y+=gravedad*delta
	if Input.is_action_pressed("ui_left"):
		movimiento.x-=speed
	if Input.is_action_pressed("ui_right"):
		movimiento.x+=speed
	if movimiento.x!=0:
		$AnimationPlayer.play("caminando")
		$Sprite.flip_h=movimiento.x<0
	movimiento=move_and_slide(movimiento,Vector2(0,1))