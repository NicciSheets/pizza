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
	#pizza_crust = ["pan crust", "hand tossed"]
	if pizza_crust == "pan crust"
		return pizza_quantity*3.00
	else 
		return pizza_quantity*2.00
	end
end

def toppings_price(pizza_toppings,pizza_quantity)
	"pizza_toppings#{pizza_toppings}"
	"pizza_quantity#{pizza_quantity}"
	#pizza_toppings = ["pepperoni", "sausage", "ham", "bacon", "green peppers", "banana peppers", "olives", "mushrooms", "onions", "pineapple" ,"extra cheese"]
	if pizza_toppings == "pepperoni" || "sausage"
		pizza_quantity*0.50
	elsif pizza_toppings == "ham" || "bacon"  
		pizza_quantity*0.75
	elsif pizza_toppings == "pineapple" || "extra cheese"
		pizza_quantity*1.00
	else pizza_toppings == "green peppers" || "banana peppers" || "olives" || "mushrooms" || "onions"
		pizza_quantity*0.25
	end
end

	

puts "Your subtotal is #{crust_price(pizza_crust,pizza_quantity)} plus #{toppings_price(pizza_toppings,pizza_quantity)
}."




