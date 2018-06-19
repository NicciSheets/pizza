def pizza_order(quantity, crust, toppings)
	"That'll be #{quantity} slices of #{crust} pizza, with #{toppings} toppings."
end


puts "Welcome to Nicci's Pizza Barn.  How many slices would you like?"
pizza_quantity = gets.chomp.to_i

puts "Would you like pan crust or hand tossed?"
pizza_crust = gets.chomp

puts "And what toppings would you like? We offer pepperoni, sausage, ham, bacon, green peppers, banana peppers, olives, mushrooms, or onions.  You can also add pineapple or extra cheese."
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

def toppings_price(pizza_toppings,pizza_quantity)
	"pizza_toppings#{pizza_toppings}"
	"pizza_quantity#{pizza_quantity}"
	pizza_toppings = ["pepperoni", "sausage", "ham", "bacon", "green peppers", "banana peppers", "olives", "mushrooms", "onions", "pineapple" ,"extra cheese"]
	if pizza_toppings == "pepperoni"
		pizza_quantity*0.50
	elsif pizza_toppings == "sausage"
		pizza_quantity*0.50
	elsif pizza_toppings == "ham"
		pizza_quantity*0.75
	elsif pizza_toppings == "bacon"
		pizza_quantity*0.75
	elsif pizza_toppings == "green peppers"
		pizza_quantity*0.25
	elsif pizza_toppings == "banana peppers"
		pizza_quantity*0.25
	elsif pizza_toppings == "olives"
		pizza_quantity*0.25
	elsif pizza_toppings == "mushrooms"
		pizza_quantity*0.25
	elsif pizza_toppings == "onions"
		pizza_quantity*0.25
	elsif pizza_toppings == "pineapple"
		pizza_quantity*1.00
	else pizza_toppings == "extra cheese"
		pizza_quantity*1.00
	end
end

	

puts "Your subtotal is #{crust_price(pizza_crust,pizza_quantity)} plus #{toppings_price(pizza_toppings,pizza_quantity)
}."




