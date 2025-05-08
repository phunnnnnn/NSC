extends Button
@onready var waterDrop = $"../waterDrop"
var ifWater:bool = false

func _ready() :
	pass
	
func _process(delta: float) -> void:
	if (ifWater == true) :
		waterDrop.position = get_global_mouse_position()
	

func _on_button_down() -> void:
	#waterDrop.position = get_global_mouse_position()
	ifWater = true
	#print(get_global_mouse_position())
	print(waterDrop.position)


func _on_button_up() -> void:
	ifWater = false
