extends Control

func _ready():
	$Public/ProgressBar.value = 70
	$Government/ProgressBar.value = 70
	$"Big Corp/ProgressBar".value = 70
	print(Global.publicScore)

func _process(delta):
	$Public/ProgressBar.value = (Global.publicScore + $Public/ProgressBar.value)/1.5 
	$Government/ProgressBar.value = (Global.govScore + $Government/ProgressBar.value)/1.5
	$"Big Corp/ProgressBar".value = (Global.corpScore + $"Big Corp/ProgressBar".value)/1.5
	
	
func _on_quit_pressed():
	get_tree().quit()
