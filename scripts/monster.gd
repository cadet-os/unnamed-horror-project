extends CharacterBody2D
@onready var anim = $AnimatedSprite2D
@export var speed = 350.0
@export var attack_range = 100.0
var player
var can_attack = true

func _ready():
	player = get_node("/root/Game/player")
func _physics_process(_delta):
	if player == null:
		return
	var distance = global_position.distance_to(player.global_position)

	if distance > attack_range:
		anim.play("walk")
		var direction = (player.global_position - global_position).normalized()
		velocity = direction * speed
	else:
		anim.play("attack")
		velocity = Vector2.ZERO
		attack()
	move_and_slide()
	look_at(player.global_position)
	rotation -= deg_to_rad(90)

func attack():
	if player.health >= 1:
		if can_attack == false:
			return
		can_attack = false
		player.take_damage(1)
		await get_tree().create_timer(1.0).timeout
		can_attack = true
	else:
		return
