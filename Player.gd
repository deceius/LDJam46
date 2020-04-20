extends KinematicBody2D

const ACCELERATION = 150
const MAX_SPEED = 40
const FRICTION = 150
const DEFAULT_TINT = 0.27
const LIGHT_DRAIN = 0.05
const DARK_ADD = LIGHT_DRAIN * 0.183
const BATTERY_LIFE = LIGHT_DRAIN * 15
const LIGHT_ADD =  DARK_ADD * 15
enum DIRECTION { UP, DOWN, RIGHT, LEFT}
var motion = Vector2.ZERO
var is_game_over = false
var is_moving = false
var is_attacking = false
var time_start = 0
var time_now = 0
var last_direction = 1
var hitbox_position = 0

onready var darkness = $Darkness
onready var eb = $CanvasLayer/EnergyBar
onready var hb = $CanvasLayer/HealthBar
onready var light = $Light2D
onready var sprite = $AnimatedSprite
onready var sword = $SwordHit
onready var swordCollision = $SwordHit/Collision

func _ready():
	Global.Player = self
	sword.knockback_vector = Vector2.DOWN
	hitbox_position = swordCollision.position.x;
	eb.value = (light.energy / 2) * 100
	hb.value = 100
	time_start = OS.get_unix_time()
	pass

func movement_computation(delta):
	var input_trigger = Vector2.ZERO
	input_trigger.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_trigger.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_trigger = input_trigger.normalized()
	
	sprite.flip_h = last_direction < 0
	
	if input_trigger != Vector2.ZERO && !is_game_over:
		is_moving = true
		sprite.play("walk")
		sword.knockback_vector = input_trigger
		motion = motion.move_toward(input_trigger * MAX_SPEED, ACCELERATION * delta)
		if(input_trigger.x != 0):
			last_direction = input_trigger.x;
	else:
		is_moving = false
		sprite.play("idle")
		motion = motion.move_toward(Vector2.ZERO, FRICTION * delta)
		
	pass
	
func player_movement_trigger(delta):
	movement_computation(delta)
	pass
	
func attacking_trigger(delta):
	is_moving = false
	sprite.play("attack")
	swordCollision.disabled = false
	motion = Vector2.ZERO #motion.move_toward(Vector2.ZERO, FRICTION * delta)
	move_and_slide(motion)
	pass
func _physics_process(delta):
	if(hb.value <= 0):
		print("GAME OVER")
		show_game_over()
		is_game_over = true
		$LightTimer.stop()
		get_tree().paused = true
	if (sprite.flip_h):
		swordCollision.position.x = 0 - hitbox_position
	else:
		swordCollision.position.x = hitbox_position
	if Input.is_action_just_pressed("attack"):
		is_attacking = true
		attacking_trigger(delta)
	if(is_attacking):
		if(sprite.animation == "attack" && sprite.frame == sprite.frames.get_frame_count("attack") - 1):
			is_attacking = false
			swordCollision.disabled = true
	else:
		player_movement_trigger(delta)
		if(!is_game_over):
			move_and_slide(motion)
	pass # END
	

func show_game_over():
	darkness.color.r = 0
	darkness.color.g = 0
	darkness.color.b = 0
	light.energy = 0
	time_now = OS.get_unix_time()
	var elapsed = time_now - time_start
	var minutes = elapsed / 60
	var seconds = elapsed % 60
	var str_elapsed = "%02d min %02d sec" % [minutes, seconds]
	var l = $CanvasLayer/GameOverSubTitle.text
	$CanvasLayer/GameOverSubTitle.text = l + str_elapsed 
	$CanvasLayer/GameOverTitle.visible = true
	$CanvasLayer/GameOverSubTitle.visible = true
	$CanvasLayer/Restart.visible = true
	eb.visible = false
	hb.visible = false
	$CanvasLayer/Pause.visible = false
	
func _on_LightTimer_timeout():
	if(light.energy > 0.0):
		light.energy -= LIGHT_DRAIN
		var c = darkness.get_color()
		if(((light.energy  / 2) * 100) < 70):
			c.r -= DARK_ADD
			c.g -= DARK_ADD
			c.b -= DARK_ADD
		darkness.set_color(c)
		$LightTimer.start()
	else:
		print("GAME OVER")
		show_game_over()
		is_game_over = true
		$LightTimer.stop()
		get_tree().paused = true
		
	eb.value = ((light.energy  / 2) * 100)
	
	pass # Replace with function body.


func _on_Button_pressed():
	
	get_tree().change_scene("res://Title Screen.tscn")
	pass # Replace with function body.



	
func on_get_health(body):
	if(body == self):
		var regen = hb.value + 10
		if (regen > 100):
			hb.value = 100
		else:
			hb.value = regen
	pass # Replace with function body.

func on_enter_area(body):
	if(body == self):
		var energy = light.energy + BATTERY_LIFE
		if(energy > 2):
			light.energy = 2
		else:
			light.energy = energy
		var c = darkness.get_color()
		if(eb.value < 70):
			c.r += LIGHT_ADD
			c.g += LIGHT_ADD
			c.b += LIGHT_ADD
		if(c.r > DEFAULT_TINT):
			c.r = DEFAULT_TINT
			c.g = DEFAULT_TINT
			c.b = DEFAULT_TINT
		darkness.set_color(c)
	pass # Replace with function body.

var isPaused = false
func _on_Pause_pressed():
	isPaused = !isPaused
	$CanvasLayer/PausedLabel.visible = isPaused
	get_tree().paused = isPaused
	pass # Replace with function body.

func show_beat_game():
	darkness.color.r = 0
	darkness.color.g = 0
	darkness.color.b = 0
	light.energy = 0
	time_now = OS.get_unix_time()
	var elapsed = time_now - time_start
	var minutes = elapsed / 60
	var seconds = elapsed % 60
	var str_elapsed = "%02d min %02d sec" % [minutes, seconds]
	var l = "You got away safely! You survived for "
	$CanvasLayer/GameOverTitle.text = "CONGRATULATIONS"
	$CanvasLayer/GameOverSubTitle.text = l + str_elapsed 
	$CanvasLayer/GameOverTitle.visible = true
	$CanvasLayer/GameOverSubTitle.visible = true
	$CanvasLayer/Restart.visible = true
	eb.visible = false
	hb.visible = false
	$CanvasLayer/Pause.visible = false
func _on_Ship_body_entered(body):
	if(body == self):
		get_tree().paused = true
		show_beat_game()
	pass # Replace with function body.
