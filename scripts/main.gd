extends Node3D

var start_touch := Vector2.ZERO

func _input(event):
    if event is InputEventScreenTouch:
        if event.pressed:
            start_touch = event.position
        else:
            shoot(event.position - start_touch)

func shoot(swipe: Vector2):
    var dir = Vector3(swipe.x * 0.01, 0.25, -1).normalized()
    $Ball.shoot(dir)
    $Keeper.react(dir.x * 4.0)
