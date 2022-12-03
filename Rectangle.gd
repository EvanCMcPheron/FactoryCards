tool
extends Node2D


export var width: float = 20.0 setget set_width
export var height: float = 40.0 setget set_height
export var color: Color setget set_color

func _ready() -> void:
	update_rect()
	

func update_rect() -> void:
	$CollisionShape2D.shape.extents = Vector2(width/2, height/2)
	var buf = PoolVector2Array()
	buf.append_array([	
		Vector2(width/2, height/2),
		Vector2(-width/2, height/2),
		Vector2(-width/2, -height/2),
		Vector2(width/2, -height/2)
	])
	$Polygon2D.polygon = buf


func set_width(v: float) -> void:
	width = v
	if get_child_count() > 1:
		update_rect()

func set_height(v:float) -> void:
	height = v
	if get_child_count() > 1:
		update_rect()

func set_color(v: Color) -> void:
	$Polygon2D.modulate = v
