extends Panel

@onready var gardenslot = $"."
@onready var text = $text

# กำหนดสีปกติ และสีเมื่อ hover 
var normal_color = Color("2c2c2c")     # เทาเข้ม
var hover_color = Color("4444aa")     # น้ำเงินอ่อน

func _ready():
	# ใช้ StyleBoxFlat เพื่อควบคุมสี background
	#var style = StyleBoxFlat.new()
	#style.bg_color = normal_color
	#add_theme_stylebox("panel", style)
	gardenslot.modulate = normal_color
	text.visible = false
	mouse_filter = Control.MOUSE_FILTER_PASS  # ให้จับเมาส์ได้

func _on_mouse_entered():
	#var style = get_theme_stylebox("panel") as StyleBoxFlat
	#style.bg_color = hover_color
	gardenslot.modulate = hover_color
	text.visible = true
	#queue_redraw()

func _on_mouse_exited():
	#var style = get_theme_stylebox("panel") as StyleBoxFlat
	#style.bg_color = normal_color
	gardenslot.modulate = normal_color
	text.visible = false
	#queue_redraw()

# เชื่อมสัญญาณใน _ready()
func _enter_tree():
	connect("mouse_entered", Callable(self, "_on_mouse_entered"))
	connect("mouse_exited", Callable(self, "_on_mouse_exited"))
