extends Node2D

func _ready():
	$Timer.wait_time = 30
	$Timer.start()

func _process(delta):
	$Rounded.value = $Timer.time_left
	$Label.text = "%d:%02d" % [floor($Rounded.value / 60), int($Rounded.value) % 60]


func _on_timer_timeout():
	SceneTransition.change_scene("res://results.tscn")
