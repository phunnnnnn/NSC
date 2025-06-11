extends Control

var mouseFocus = false

@onready var potHitbox = $Panel
@onready var description = $Panel/Label

func _ready() -> void:
	potHitbox.connect("mouse_entered", Callable(self, "_on_mouse_entered"))
	potHitbox.connect("mouse_exited",Callable(self,"_on_mouse_exited"))
	
	potHitbox.connect("gui_input",Callable(self,"_on_input"))

func _process(delta: float) -> void:
	pass

func _on_mouse_entered() :
	mouseFocus = true
	description.visible = true

func _on_mouse_exited() :
	mouseFocus = false
	description.visible = false

func _on_input(event:InputEvent) :
	if event is InputEventMouseButton :
		if event.button_index == MOUSE_BUTTON_LEFT :
			if event.pressed :
				print("Fine")
			else :
				print("pootai")
