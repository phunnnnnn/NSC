extends Control
class_name Planter

func _gui_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		set_drag_preview(self.duplicate())
		get_tree().set_drag_data("planter", self)
