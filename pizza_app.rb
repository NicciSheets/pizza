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

# def toppings_price(pizza_toppings,pizza_quantity)
# 	"pizza_toppings#{pizza_toppings}"
# 	"pizza_quantity#{pizza_quantity}"
# 	#pizza_toppings = ["pepperoni", "sausage", "ham", "bacon", "green peppers", "banana peppers", "olives", "mushrooms", "onions", "pineapple" ,"extra cheese"]
# 	if pizza_toppings == "pepperoni" || "sausage"
# 		pizza_quantity*0.50
# 	elsif pizza_toppings == "ham" || "bacon"  
# 		pizza_quantity*0.75
# 	elsif pizza_toppings == "pineapple" || "extra cheese"
# 		pizza_quantity*1.00
# 	else pizza_toppings == "green peppers" || "banana peppers" || "olives" || "mushrooms" || "onions"
# 		pizza_quantity*0.25
# 	end
# end

def toppings(pizza_toppings, pizza_quantity, toppings_price = {})
	empty = []
	pizza_toppings = "#{pizza_toppings}"
	pizza_quantity = "#{pizza_quantity}"
	toppings_price = {"pepperoni" => 0.50, "sausage" => 0.50, "ham" => 0.75, "bacon" => 0.75, "pineapple" => 1.00, "extra cheese" => 1.00, "green peppers" => 0.25, "banana peppers" => 0.25, "mushrooms" => 0.25, "olives" => 0.25, "onions"=> onions}
	toppings_price.each do |x, y|
		input = pizza_toppings.to_a
		if input == x
			puts y.to_i
		end
		empty << y.to_i*pizza_quantity
	end
	empty
end

def total_price(toppings, crust_prices)
	toppings = "#{toppings}"
	crust_price = "#{crust_price}"
	empty = []
	empty2 = []
	empty << toppings.to_i 
	empty2 << crust_price.to_i

	puts "Your total is '#{empty + empty2}'!"
end

# puts total_price(toppings, crust_price)
#puts "Your subtotal is #{crust_price(pizza_crust,pizza_quantity)} plus #{toppings_price(pizza_toppings,pizza_quantity)
#}."


puts total_price(pizza_toppings, pizza_crust)
