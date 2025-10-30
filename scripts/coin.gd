extends Area2D

@onready var game_manager: Node = %GameManager

func _on_body_entered(body: Node2D) -> void:
	var manager: GameManager = game_manager
	manager.add_point()
	queue_free()
