extends KinematicBody2D

const ACCELERATION = 150
const MAX_SPEED = 40
const FRICTION = 150
const LIGHT_DRAIN = 0.069 # N O I C E
const DEFAULT_TINT = 0.27
const DARK_ADD = LIGHT_DRAIN * 0.183
enum DIRECTION { UP, DOWN, RIGHT, LEFT}
var motion = Vector2.ZERO
var is_game_over = false
var is_moving = false
var time_start = 0
var time_now = 0
var last_direction = 1

func _ready():
	Global.Player = self
	$CanvasLayer/EnergyBar.value = ($Light2D.energy / 2) * 100
	$CanvasLayer/HealthBar.value = 100
	time_start = OS.get_unix_time()
	pass

func movement_computation(delta):
	var input_trigger = Vector2.ZERO
	input_trigger.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_trigger.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_trigger = input_trigger.normalized()
	
	$AnimatedSprite.flip_h = last_direction < 0
	
	if input_trigger != Vector2.ZERO && !is_game_over:
		is_moving = true
		$AnimatedSprite.play("walk")
		motion = motion.move_toward(input_trigger * MAX_SPEED, ACCELERATION * delta)
		if(input_trigger.x != 0):
			last_direction = input_trigger.x;
	else:
		is_moving = false
		$AnimatedSprite.play("idle")
		motion = motion.move_toward(Vector2.ZERO, FRICTION * delta)
		
	pass
	
func player_movement_trigger(delta):
	movement_computation(delta)
	pass
	
		
func _physics_process(delta):
	player_movement_trigger(delta)
	if(!is_game_over):
		move_and_slide(motion)
	pass # END
	

func show_game_over():
	time_now = OS.get_unix_time()
	var elapsed = time_now - time_start
	var minutes = elapsed / 60
	var seconds = elapsed % 60
	var str_elapsed = "%02d min %02d sec" % [minutes, seconds]
	var l = $CanvasLayer/GameOverSubTitle.text
	$CanvasLayer/GameOverSubTitle.text = l + str_elapsed 
	$CanvasLayer/GameOverTitle.visible = true
	$CanvasLayer/GameOverSubTitle.visible = true
	$CanvasLayer/Button.visible = true
	$CanvasLayer/EnergyBar.visible = false
	$CanvasLayer/HealthBar.visible = false
	
func _on_LightTimer_timeout():
	if($Light2D.energy > 0.0):
		$Light2D.energy -= LIGHT_DRAIN
		var c = $Darkness.get_color()
		if((($Light2D.energy  / 2) * 100) < 70):
			c.r -= DARK_ADD
			c.g -= DARK_ADD
			c.b -= DARK_ADD
		print(c.r)
		$Darkness.set_color(c)
		$LightTimer.start()
	else:
		print("GAME OVER")
		show_game_over()
		is_game_over = true
		$LightTimer.stop()
		
	$CanvasLayer/EnergyBar.value = (($Light2D.energy  / 2) * 100)
	
	pass # Replace with function body.


func _on_Button_pressed():
	get_tree().reload_current_scene()
	pass # Replace with function body.



	
const BATTERY_LIFE = LIGHT_DRAIN * 10
const LIGHT_ADD =  DARK_ADD * 10

func on_enter_area(body):
	if(body == self):
		var energy = $Light2D.energy + BATTERY_LIFE
		if(energy > 2):
			$Light2D.energy = 2
		else:
			$Light2D.energy = energy
		var c = $Darkness.get_color()
		if($CanvasLayer/EnergyBar.value < 70):
			c.r += LIGHT_ADD
			c.g += LIGHT_ADD
			c.b += LIGHT_ADD
		if(c.r > DEFAULT_TINT):
			c.r = DEFAULT_TINT
			c.g = DEFAULT_TINT
			c.b = DEFAULT_TINT
		$Darkness.set_color(c)
		print(c.r)
	pass # Replace with function body.
