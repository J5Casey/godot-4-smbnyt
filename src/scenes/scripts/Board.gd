extends GridContainer

var grid_size = Vector2(6, 6)
var tile_size = Vector2(150, 150)

func _ready():
	create_grid()

func create_grid():
	columns = grid_size.y
	
	for row in range(grid_size.y):
		for col in range(grid_size.x):
			var tile = Panel.new()
			tile.custom_minimum_size = tile_size
			add_child(tile)

		# Add any additional content or customization for each tile here
			#var label = Label.new()
			#label.text = str(row * grid_size.x + col + 1)
			#tile.add_child(label)
			
			var button = Button.new()
			button.text = str(row * grid_size.x + col + 1)
			button.custom_minimum_size = tile_size
			tile.add_child(button)
