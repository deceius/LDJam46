extends KinematicBody2D

const ACCELERATION = 150
const MAX_SPEED = 40
const FRICTION = 150
enum DIRECTION { UP, DOWN, RIGHT, LEFT}
var motion = Vector2.ZERO
var is_moving = false

func _ready():
	$CanvasLayer/EnergyBar.value = ($Light2D.energy / 2) * 100
	$CanvasLayer/HealthBar.value = 100
	pass

func movement_computation(delta):
	var input_trigger = Vector2.ZERO
	input_trigger.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_trigger.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_trigger = input_trigger.normalized()
	
		
	if input_trigger != Vector2.ZERO:
		is_moving = true
		$AnimatedSprite.play("walk")
		motion = motion.move_toward(input_trigger * MAX_SPEED, ACCELERATION * delta)
	else:
		is_moving = false
		$AnimatedSprite.play("idle")
		motion = motion.move_toward(Vector2.ZERO, FRICTION * delta)
	
func player_movement_trigger(delta):
	movement_computation(delta)
	
	pass
	
		
func _physics_process(delta):
	player_movement_trigger(delta)
	move_and_slide(motion)
	pass # END
	



func _on_LightTimer_timeout():
	if($Light2D.energy > 0.0):
		$Light2D.energy -= 0.05
		if((($Light2D.energy  / 2) * 100) < 70):
			var c = $Darkness.get_color()
			c.r -= 0.008
			c.g -= 0.008
			c.b -= 0.008
			$Darkness.set_color(c)
		$LightTimer.start()
	else:
		print("GAME OVER")
		$LightTimer.stop()
		
	$CanvasLayer/EnergyBar.value = (($Light2D.energy  / 2) * 100)
	print($CanvasLayer/EnergyBar.value)
	pass # Replace with function body.
