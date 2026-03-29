extends Node2D

@onready var brickObject = preload("res://Bloque.tscn")

var columnas = 10
var lineas = 5
var margen = 57



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	setupLevel()

func setupLevel():
	
	for l in lineas:
		for c in columnas:
			
			var newBloque = brickObject.instantiate()
			add_child(newBloque)
			newBloque.position = Vector2(margen + (34 * c), margen + (34 * l))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
