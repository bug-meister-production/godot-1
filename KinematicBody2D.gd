extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
const SPEED = 100
const GRAV = 10

var vel = Vector2();

func _physics_process(delta):
	if Input.is_action_pressed('ui_left'):
		print("ok")
		vel.x = -SPEED
	elif Input.is_action_pressed('ui_right'):
		vel.x = SPEED
	else:
		vel.x = 0
		
	if Input.is_action_pressed('ui_up'):
		vel.y = -SPEED
	elif Input.is_action_pressed('ui_down'):
		vel.y = SPEED
	else:
		vel.y = 0
		
	move_and_slide(vel)
	pass

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
