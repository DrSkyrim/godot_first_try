extends Node
class_name GameManager
var score:int = 0

func add_point() -> void:
	score += 1
	print(score)
