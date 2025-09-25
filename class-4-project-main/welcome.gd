@warning_ignore("missing_tool")

extends SteppingRobot
var cups:int = 5
var money:int = 10
var coffe_price:int = 2

func what_should_i_do() -> void:
	say("MSG:You have " + str(money) + " MULA")
	grab_coffee()
	##turn_around()
	##walk_around(3)
	say("MSG: You have " + str(calculate_cost_of_coffey(money, coffe_price, cups)) + "MULA left")
	if money < 0:
		say("ERR:NO MULLA")
		
func turn_around() -> void:
	turn_left()
	turn_left()

func walk_around(tile_count) -> void:
	for i in tile_count:
		step_forward()

func calculate_cost_of_coffey(money:int, coffe_price:int, cups:int) -> int:
	if cups >= 3:
		coffe_price = coffe_price*0.5
		money -= coffe_price*cups
		return money
	else:
		money -= coffe_price*cups
		return money
	return 0
	
func grab_coffee() -> void:
	while is_item_before_me == false:
		step_forward()
