extends Area2D

var max_speed
var speed
var acceleration
var direction

func _ready():
	# Called when the node is added to the scene for the first time.

	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	translate(direction * speed * delta)
	if(speed < max_speed):
		speed += acceleration
