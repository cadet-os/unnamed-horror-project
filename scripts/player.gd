extends CharacterBody2D
@onready var anim = $AnimatedSprite2D
@export var health = 3
@export var speed = 400.0

func _physics_process(_delta):
	var direction = Input.get_vector(
		"move_left",
		"move_right",
		"move_up",
		"move_down"
	)

	velocity = direction * speed
	move_and_slide()
	
	if direction != Vector2.ZERO:
		anim.play("walk")
	else:
		anim.play("idle")

func _process(_delta):
	look_at(get_global_mouse_position())
	rotation -= deg_to_rad(90)


func take_damage(amount):
	health -= amount
	print("Health: ", health)
	if health <= 0:
		print("Player Died")
		get_tree().change_scene_to_file("res://scenes/game_over_menu.tscn")
		
