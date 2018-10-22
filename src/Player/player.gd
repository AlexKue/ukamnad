extends Node2D

var speed
var screensize

# Called when the node is added to the scene for the first time.
func _ready():
	speed = 200;
	screensize = get_viewport().size

# Called every frame. Delta is time since last frame.
func _process(delta):
	var direction = Vector2()
	
	if Input.is_action_pressed("ui_left"):
		direction.x -=1
	if Input.is_action_pressed("ui_right"):
		direction.x +=1
	if Input.is_action_pressed("ui_up"):
		direction.y -=1
	if Input.is_action_pressed("ui_down"):
		direction.y +=1
	
	direction = direction.normalized() * speed * delta
	
	translate(direction)
	position.x = clamp(position.x, 0, screensize.x)
	position.y = clamp(position.y, 0, screensize.y)
	
	pass
