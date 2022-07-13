extends KinematicBody2D

const UP = Vector2(0,-1)
const GRAV = 25
const JUMP = -400
const MAX_FALL = 300
var vect = Vector2.ZERO

func _physics_process(delta):
	vect.y += GRAV  
	if Input.is_action_just_pressed("jump"):vect.y = JUMP
	if vect.y > MAX_FALL:vect.y = MAX_FALL
	vect = move_and_slide(vect,UP)



func _on_Area2D_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if 'wall' in body.name:
		get_tree().reload_current_scene()
