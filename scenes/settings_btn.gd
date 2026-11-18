extends Button
	
func _ready() -> void:
	%pause_panel.visible = false
	process_mode = Node.PROCESS_MODE_ALWAYS
	process_mode = %pause_panel.PROCESS_MODE_ALWAYS
	get_tree().paused = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed() -> void:
	%pause_panel.visible = !%pause_panel.visible
	get_tree().paused = !get_tree().paused
	
