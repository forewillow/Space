extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var sun_position = $Camera3D.unproject_position($Atmosphere/SunMesh.global_position)
	$Lens.material.set_shader_parameter("sun_position",sun_position)
