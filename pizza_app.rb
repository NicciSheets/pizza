def pizza_order(quantity, crust, toppings)
	"That'll be #{quantity} slices of #{crust} pizza, with #{toppings}."
end


puts "Welcome to Nicci's Pizza Barn.  How many slices would you like?"
pizza_quantity = gets.chomp.to_i

puts "Would you like pan crust or hand tossed?"
pizza_crust = gets.chomp

puts "And what toppings would you like? We offer pepperoni, sausage, ham, bacon, green peppers, banana peppers, olives, mushrooms, or onions.  You can also add extra cheese."
pizza_toppings = gets.chomp

puts pizza_order(pizza_quantity, pizza_crust, pizza_toppings)

def crust_price(pizza_crust,pizza_quantity)
	"pizza_crust#{pizza_crust}"
	"pizza_quantity#{pizza_quantity}"
	pizza_crust = ["pan crust", "hand tossed"]
	if pizza_crust == "pan crust"
		pizza_quantity*3.00
	else pizza_crust == "hand tossed"
		pizza_quantity*2.00
	end
end


puts "Your subtotal is #{crust_price(pizza_crust,pizza_quantity)}."




