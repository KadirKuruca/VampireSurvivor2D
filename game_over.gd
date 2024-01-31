extends Node2D

func _ready():
	var score = SceneSwitcher.get_param("score")
	%ScoreLabel.text = "SCORE: %d" % score


func _on_button_pressed():
	SceneSwitcher.change_scene("res://survivor_game.tscn")
