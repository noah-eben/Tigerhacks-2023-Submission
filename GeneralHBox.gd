extends HBoxContainer

var scroll_speed = 15
var scroll_timer = 0.0

func _process(delta):
	scroll_timer += delta

	# Adjust the scroll speed to control the scroll rate
	if scroll_timer >= 0.1 / scroll_speed:
		$Public.vertical_scroll_mode = 4
		$Public.scroll_vertical += 1  # Scroll down
		
		$Government.vertical_scroll_mode = 4
		$Government.scroll_vertical += 1  # Scroll down
		
		$BigCorp.vertical_scroll_mode = 4
		$BigCorp.scroll_vertical += 1  # Scroll down
		scroll_timer = 0.0
