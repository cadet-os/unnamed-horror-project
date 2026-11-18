extends PanelContainer

# create a variable that instead both the resume and pause button can toggle.
@export var isPaused = false;
@onready var pause_panel = get_node(".")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	process_mode = %pause_panel.PROCESS_MODE_ALWAYS
	
	pause_panel.visible = false
	get_tree().paused = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# resume game button
#func _on_resume_pressed() -> void:
	#print("Resume Game")
	#%pause_panel.visible = !%pause_panel.visible
	#get_tree().paused = !get_tree().paused
## why does the resume button not work?

func _on_resume_pressed() -> void:
	print("Resume Game")
	isPaused = !isPaused
	pauseState()

func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
	
func pauseState() -> void:
	%pause_panel.visible = !%pause_panel.visible
	get_tree().paused = !get_tree().paused
