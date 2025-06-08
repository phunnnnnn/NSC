extends Control

@onready var Thing = $"."
@onready var Text = $Text

func _ready() -> void:
	Text.visible = 0
	Thing.connect("mouse_entered", Callable(self, "_on_mouse_entered"))
	Thing.connect("mouse_exited",Callable(self,"_on_mouse_exited"))

func _on_mouse_entered():
	Text.visible = 1
	
func _on_mouse_exited():
	Text.visible = 0
