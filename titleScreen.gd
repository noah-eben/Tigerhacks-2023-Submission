extends Control




func _on_play_pressed():
	SceneTransition.change_scene("res://rules.tscn")


func _on_quit_pressed():
	get_tree().quit()
