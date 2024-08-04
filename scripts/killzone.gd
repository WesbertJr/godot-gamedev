extends Area2D
@onready var animation_player = %AnimationPlayer
@onready var timer = $Timer
@onready var player = %Player

var player_health = 100

func _on_body_entered(body):
	print("you died!!")
	Engine.time_scale = 0.5
	animation_player.play("jump")
	body.get_node("CollisionShape2D").queue_free()
	timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
