class_name StateMachine
extends Node

export var default_node: String

onready var state: State setget change_state


func _ready() -> void:
	state = get_node(default_node)
	state.enter_state()


func _process(delta: float) -> void:
	state.update_state(delta)


func change_state(new_state: State) -> void:
	state.exit_state()
	state = new_state
	state.enter_state()


func change_state_by_name(name: String) -> void:
	change_state(get_node(name))


func _exit_tree():
	state.exit_state()
