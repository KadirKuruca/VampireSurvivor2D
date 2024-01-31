extends Node2D

var score = 0

func spawn_mob():
	var new_mob = preload("res://mob.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	new_mob.connect("mob_died", _on_mob_died)
	add_child(new_mob)

func _on_timer_timeout():
	spawn_mob()
	

func _on_player_health_depleted():
	SceneSwitcher.change_scene("res://game_over.tscn", {"score":score})
	
func _on_mob_died():
	score += 1
	%Score/Label.text = "SCORE : %d" % score
