extends CharacterBody3D

@export var speed = 6.0
var target_x = 0.0

func react(x):
    target_x = x

func _physics_process(delta):
    velocity.x = (target_x - global_transform.origin.x) * speed
    move_and_slide()
