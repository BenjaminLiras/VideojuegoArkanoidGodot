extends Control




func _on_button_reiniciar_pressed() -> void:
	get_tree().change_scene_to_file("res://ArKanoid.tscn")


func _on_button_salir_pressed() -> void:
	get_tree().change_scene_to_file("res://menu.tscn")
