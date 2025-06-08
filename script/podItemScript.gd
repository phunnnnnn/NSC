extends Panel

@onready var potIcon = $"."
@onready var text = $text
@onready var button = $button

signal pickUppot

func _ready():
	text.visible = true
	text.text = "pot"
	mouse_filter = Control.MOUSE_FILTER_PASS  # ให้จับเมาส์ได้
	#button.pressed.connnect(press)

func _on_mouse_entered():
	text.text = "POT"

func _on_mouse_exited():
	text.text = "pot"

func press():
	print("yes")
	emit_signal("pickUppot")

func _enter_tree():
	connect("mouse_entered", Callable(self, "_on_mouse_entered"))
	connect("mouse_exited", Callable(self, "_on_mouse_exited"))


func _on_button_pressed() -> void:
	press()
