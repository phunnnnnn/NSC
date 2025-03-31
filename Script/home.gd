extends Control
#home script

func _on_btn_start_pressed() -> void:
	print("New Run")
	new_Run()

func new_Run():
	get_tree().change_scene_to_file("res://Scene/main_game.tscn")
