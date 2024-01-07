extends Control

var grid_size = Vector2(6, 6)

func _ready():
	create_grid()

func create_grid():
	for row in range(grid_size.y):
		for col in range(grid_size.x):
			var tile = Panel.new()
			tile.rect_size = Vector2(100, 100)  # Example: Set the size for each tile
			tile.rect_position = Vector2(col * (tile.rect_size.x), row * (tile.rect_size.y))
			add_child(tile)
			
			# Add any additional content or customization for each tile here
			var label = Label.new()
			label.text = str(row * grid_size.x + col + 1)  # Example: Assign a label or content
			tile.add_child(label)
