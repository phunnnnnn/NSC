extends TextureRect

var dragging := false

func _gui_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		dragging = true
		set_drag_preview(self.duplicate())

func get_drag_data(position):
	return "seed"

func can_drop_data(position, data):
	return data == "seed"

func drop_data(position, data):
	pass  # ไม่ต้องทำอะไv
