extends Node


onready var game_scene = preload("res://scenes/GameScene/GameScene.tscn")

func _ready():
	add_child(game_scene.instance())
