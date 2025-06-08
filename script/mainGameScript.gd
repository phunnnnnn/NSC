extends Control

@onready var garden_Grid = $gardenGrid
@onready var day_Lable = $calendar
@onready var next_Day_Button = $nextDayButton



var current_day = 1

var taget = "none"

func _ready() :
	day_Lable.text = "Day %d" % current_day
	next_Day_Button.pressed.connect(_on_next_day)

func _on_next_day() :
	current_day += 1
	day_Lable.text = "Day %d" % current_day
#	for planter in garden_Grid.get_children():
#		planter.grow()



func getpot () :
	print("GET IT")


func _on_pot_pick_uppot() -> void:
	getpot()
	print("j")
