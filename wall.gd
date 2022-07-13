extends StaticBody2D

func random_pos():
	randomize()
	if position.y <= 0 or position.y <= -150:
		position.y = rand_range(0,-150)
	elif position.y >= 373 or position :
		position.y = rand_range(373,502)

func _ready():random_pos()

func _physics_process(delta):
	position.x -= 2
	if position.x < -100:
		position.x = 1200
		random_pos()
