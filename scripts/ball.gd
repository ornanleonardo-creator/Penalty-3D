extends RigidBody3D

@export var power = 22.0

func shoot(dir: Vector3):
    linear_velocity = Vector3.ZERO
    apply_impulse(Vector3.ZERO, dir * power)
