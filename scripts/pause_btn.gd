extends Button

@onready var pause_panel = %pause_panel
	
func _ready() -> void:
	pause_panel.visible = false
	process_mode = Node.PROCESS_MODE_ALWAYS
	get_tree().paused = false

## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass

# settings gear toggle
func _on_pressed() -> void:
	pause_panel.pauseState()
