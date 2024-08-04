extends Node

var score = 0;
@onready var scoreLabel = %count

func add_score():
	score += 1
	scoreLabel.text = str(score)
