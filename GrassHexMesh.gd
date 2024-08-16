extends MeshInstance3D

const selected_material = preload('res://selected_tile_shader_material.tres')
const unselected_material = preload('res://unselected_tile_shader_material.tres')
# Called when the node enters the scene tree for the first time.
func _ready():
	set_surface_override_material(0, unselected_material)# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_tile_to_selected():
	set_surface_override_material(0, selected_material)

func set_tile_to_unselected():
	set_surface_override_material(0, unselected_material)
