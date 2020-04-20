extends Area2D

const LIGHT_DRAIN = 0.05
const DARK_ADD = LIGHT_DRAIN * 0.183
var canAttack = true
var isAttackable = false
onready var attack_speed = $AttackSpeed

func _on_PlayerAttackingZone_body_entered(body):
	if(body == Global.Player):
		isAttackable = true
	pass # Replace with function body.


func _on_AttackSpeed_timeout():
	canAttack = true
	pass # Replace with function body.

func _process(delta):
	if(isAttackable):
		if (canAttack):
			Global.Player.hb.value -= 5
			Global.Player.light.energy -= LIGHT_DRAIN
			var c = Global.Player.darkness.get_color()
			if(((Global.Player.light.energy  / 2) * 100) < 70):
				c.r -= DARK_ADD
				c.g -= DARK_ADD
				c.b -= DARK_ADD
			Global.Player.darkness.set_color(c)
			canAttack = false
			attack_speed.start()
	pass

func _on_PlayerAttackingZone_body_exited(body):	
	if(body == Global.Player):
		isAttackable = false
	pass # Replace with function body.
