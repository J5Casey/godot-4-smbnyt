extends GridContainer

var grid_size = Vector2(6, 6)
var tile_size = Vector2(128, 128)
var selected_buttons := []

func _ready():
	create_grid()

func create_grid():
	columns = grid_size.y
	
	for row in range(grid_size.y):
		for col in range(grid_size.x):
		
			var button = Button.new()
			button.custom_minimum_size = tile_size
			button.pressed.connect(self._button_pressed)
			if((col % 2 == 0 && row % 2 == 0)||(col % 2 == 1 && row % 2 == 1)):
				button.modulate = Color(0,255,255, 0.5)
			else:
				button.modulate = Color(101,0,215, 0.5)
			add_child(button)
			
			

func _button_pressed(button):
	# Toggle selection on button press
	if button in selected_buttons:
		pass
	else:
		selected_buttons.append(button)

	# Check for common attributes when two buttons are selected
	if selected_buttons.size() == 2:
		check_common_attributes()
	
func check_common_attributes():
	var button1 = selected_buttons[0]
	var button2 = selected_buttons[1]

	# Compare attributes (customize this part based on your game logic)
	if button1.text == button2.text:
		print("Buttons have the same attribute!")
	else:
		print("Buttons do not have the same attribute!")

	# Clear selected buttons for the next selection
	selected_buttons.clear()



