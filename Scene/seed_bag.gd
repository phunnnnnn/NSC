extends Area2D

var mouseIn:bool = false ;
var grab:bool = false ;

@onready var seedBag = $"."
@onready var texture = $textureSeedBag
@onready var button = $button
@onready var hitbox = $hitbox

signal plant_event(seedName:String)

func _ready():
	pass

func _process(delta: float) -> void:
	
	if (grab == true):
		
		texture.position = get_global_mouse_position()
		button.position = texture.position - (button.size/2)
		hitbox.position = texture.position
		
		pass

func _on_mouse_entered() -> void:
	#hitbox
	#print("mouse")
	pass



func _on_button_button_down() -> void:
	grab = true ;
	Globle.inHand = "seedbag" ;
	print("Now holding : ",Globle.inHand)

func _on_button_button_up() -> void:
	grab = false ;
	Globle.inHand = "none" ;
	print("Now drop : seedbag")
	
	if ( Globle.target == "pot" ) :
		emit_signal("plant_event","seed")
		print("plant")


func _on_button_mouse_entered() -> void:
	pass # Replace with function body.


func _on_button_mouse_exited() -> void:
	pass # Replace with function body.


func _on_area_entered(area: Area2D) -> void:
	print(area,"in")
	Globle.target = area.name ;
	pass # Replace with function body.


func _on_area_exited(area: Area2D) -> void:
	print(area,"out")
	Globle.target = "none" ;
	pass # Replace with function body.
