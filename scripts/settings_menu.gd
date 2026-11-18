extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("pause_blur")

func pause():
	get_tree().paused = true
	$AnimationPlayer.play("pause_blur")

func testEsc():
	if Input.is_action_just_pressed("esc") and !get_tree().paused:
		pause()
	elif Input.is_action_just_pressed("esc") and get_tree().paused:
		resume()


func _on_resume_pressed():
	resume()

func _on_quit_pressed():
	get_tree().quit()
