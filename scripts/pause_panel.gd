extends PanelContainer

@export var isPaused = false; # made this in case the game needs to check this.
@onready var pause_panel = get_node(".")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	process_mode = pause_panel.PROCESS_MODE_ALWAYS
	
	pause_panel.visible = false
	get_tree().paused = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass

func _on_resume_pressed() -> void:
	pauseState()

func _on_settings_pressed() -> void: # in future, make this popup instead of change scenes?
	pauseState() # MUST unpause so UI is interactable
	get_tree().change_scene_to_file("res://scenes/menus/settings_menu.tscn")

func _on_main_menu_pressed() -> void:
	pauseState() # MUST unpause so UI is interactable
	get_tree().change_scene_to_file("res://scenes/menus/main_menu.tscn")

func pauseState() -> void: # toggles pause state
	isPaused = !isPaused
	pause_panel.visible = !pause_panel.visible
	get_tree().paused = !get_tree().paused
