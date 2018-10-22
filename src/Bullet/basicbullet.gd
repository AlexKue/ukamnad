extends Area2D

var speed = 0
var direction = Vector2(0,0)



func _ready():
	# Called when the node is added to the scene for the first time.
	pass

func _process(delta):
	global_translate(direction * speed * delta)
