extends KinematicBody2D

const ACCELERATION = 100
const MAX_SPEED = 38
const FRICTION = 100

enum {
	IDLE,
	CHASE
}


var knockback = Vector2.ZERO
var velocity = Vector2.ZERO
var hp = 5


var state = CHASE

onready var sprite = $AnimatedSprite
onready var playerDetect = $PlayerDetector


func _physics_process(delta):
	knockback = knockback.move_toward(Vector2.ZERO, FRICTION * delta)
	knockback = move_and_slide(knockback)
	match state:
		IDLE:
			sprite.play("idle")
			velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
			seek_player()
		CHASE:
			sprite.play("walk")
			var player = playerDetect.player
			if player != null:
				var direction = (player.global_position - global_position).normalized()
				velocity = velocity.move_toward(direction * MAX_SPEED, ACCELERATION * delta)
			else:
				state = IDLE
			sprite.flip_h = velocity.x < 0

	velocity = move_and_slide(velocity)

func seek_player():
	if playerDetect.can_see_player():
		state = CHASE


func _on_HitBox_area_entered(area):
	if(area == Global.Player.sword):
		knockback = area.knockback_vector * 85
		hp -= 1
		if(hp == 0):
			queue_free()
	pass # Replace with function body.
