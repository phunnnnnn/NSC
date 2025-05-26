extends Area2D
@onready var pot = $"."
@onready var button = $button
@onready var seedbag = $"../seedBag"

var planted: bool = false

func _ready() -> void:
	pass

func _on_area_entered(area: Area2D) -> void:
	print(area.name)
	planted = true
	Globle.target = "pot"

func _on_seed_bag_area_exited(area: Area2D) -> void:
	planted = false
	Globle.target = "none"

func _on_button_button_up() -> void:
	print("Button clicked!")

func _on_plant_event() -> void:
	if planted:
		print("🌱 ปลูกต้นไม้ใน pot แล้ว!")
	else:
		print("❌ ไม่มี seed อยู่บน pot")


func _on_seed_bag_plant_event(seedName: String) -> void:
	planted = true
	_on_plant_event()
