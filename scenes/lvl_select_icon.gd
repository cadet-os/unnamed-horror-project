@tool
extends Control

@export var lvl_indx: int = 1;
@onready var lvl_label = get_node("lvl_num")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	lvl_label.text = "Level " + str(lvl_indx)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Engine.is_editor_hint():
		lvl_label.text = "Level " + str(lvl_indx)
