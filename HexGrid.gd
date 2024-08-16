extends Node3D


#const TILE_MATERIALS = [
	#preload("res://blue.tres"),
	#preload("res://green.tres"),
	#preload("res://red.tres"),
	#preload("res://yellow.tres"),
#]

const TILE_SIZE := 1.0
const HEX_TILE = preload("res://hex_grass_tile.tscn")

@export_range (2, 20) var grid_size := 10

func _ready() -> void:
	_generate_grid()


func _generate_grid():
	var tile_index := 0
	for x in range(grid_size):
		var tile_coordinates := Vector2.ZERO
		tile_coordinates.x = x * TILE_SIZE * cos(deg_to_rad(30))
		tile_coordinates.y = 0 if x % 2 == 0 else TILE_SIZE / 2
		for y in range(grid_size):
			var tile = HEX_TILE.instantiate()
			#print(HexHelper.HexNotEqual(Vector3(1,1,1), Vector3(1,1,2)))
			print(HexHelper.hex_add(Hex.new(7,3), Hex.new(1,1)).v)
			print(HexHelper.hex_subtract(Hex.new(7,3), Hex.new(1,1)).v)
			print(HexHelper.hex_multiply(Hex.new(7,3), 5).v)
			print(HexHelper.hex_length(Hex.new(9,5)))
			print(HexHelper.hex_distance(Hex.new(7,3), Hex.new(1,1)))
			add_child(tile)
			tile.translate(Vector3(tile_coordinates.x, 0, tile_coordinates.y))
			tile_coordinates.y += TILE_SIZE
			#tile.get_node("unit_hex/mergedBlocks(Clone)").material_override = get_tile_material(tile_index)
			tile_index += 1


#func get_tile_material(tile_index: int):
	#var index = tile_index % TILE_MATERIALS.size()
	#return TILE_MATERIALS[index]
