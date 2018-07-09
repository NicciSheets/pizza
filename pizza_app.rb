def pizza_order(pizza_quantity, pizza_crust, pizza_toppings)
	"That'll be #{pizza_quantity} #{pizza_crust} pizzas, with #{pizza_toppings} toppings."
end


puts "Welcome to Nicci's Pizza Barn.  How many pizzas would you like?"
pizza_quantity = gets.chomp.to_i

puts "Would you like pan crust or hand tossed?"
pizza_crust = gets.chomp

puts "And what toppings would you like? We offer pepperoni, sausage, ham, bacon, green peppers, banana peppers, olives, mushrooms, or onions.  You can also add pineapple or extra cheese."
pizza_toppings = gets.chomp

puts pizza_order(pizza_quantity, pizza_crust, pizza_toppings)

def crust_subtotal(pizza_crust)
	"pizza_crust = #{pizza_crust}"
	crust_subtotal_arr = []
	#pizza_crust = ["pan crust", "hand tossed"]
	crust_subtotal = 0
	if pizza_crust == "pan crust"
		return crust_subtotal = 3.00
	else 
		return crust_subtotal = 2.00
		crust_subtotal_arr << crust_subtotal
	end
	crust_subtotal_arr.to_i
end

puts crust_subtotal(pizza_crust)

def pizza_toppings_split(pizza_toppings)
	pizza_toppings.split
end

#p pizza_toppings_split(pizza_toppings)

# def toppings_choices(pizza_toppings) 
# 	toppings_subtotal_arr = []
# 	toppings_subtotal = 0
# 	#choices = ["pepperoni", "sausage", "ham", "bacon", "green peppers", "banana peppers", "olives", "mushrooms", "onions", "pineapple" ,"extra cheese"]
# 	pizza_toppings_split(pizza_toppings) do |topping|
# 		if topping == "pepperoni" || "sausage"
# 			return toppings_subtotal += 0.50
# 		elsif topping == "ham" || "bacon"
# 			return toppings_subtotal += 0.75
# 		elsif topping == "green peppers" || "banana peppers" || "olives" || "mushrooms" || "onions"
# 			return toppings_subtotal += 0.25
# 		else topping == "pineapple" || "extra cheese"
# 			return toppings_subtotal += 1.00
# 		end
# 		toppings_subtotal.to_i
# 	end
# end



# def toppings_subtotal(pizza_toppings, toppings_choices)
# 	"pizza_toppings = #{pizza_toppings}"
# 	"toppings_choices = #{toppings_choices}"
# 	toppings_subtotal_arr = []
# 	pizza_toppings.each do |price|
# 		if pizza_toppings == toppings_choices.index
# 				return toppings_choices[price]
# 		end
# 	end

	# toppings_subtotal = 0
	# if choices == "pepperoni" || "sausage"
	# 	return toppings_subtotal += 0.50
	# elsif choices == "ham" || "bacon"  
	# 	return toppings_subtotal += 0.75
	# elsif choices == "pineapple" || "extra cheese"
	# 	return toppings_subtotal += 1.00
	# else choices == "green peppers" || "banana peppers" || "olives" || "mushrooms" || "onions"
	# 	return toppings_subtotal += 0.25
	# 	toppings_subtotal
	# end
	# toppings_subtotal_arr << toppings_subtotal
	# toppings_subtotal_arr.to_i

#puts toppings_subtotal(pizza_toppings)

def toppings(pizza_toppings)
	empty = []
	pizza_toppings = "#{pizza_toppings}"
	toppings_price = {"pepperoni" => 0.50, "sausage" => 0.50, "ham" => 0.75, "bacon" => 0.75, "pineapple" => 1.00, "extra cheese" => 1.00, "green peppers" => 0.25, "banana peppers" => 0.25, "mushrooms" => 0.25, "olives" => 0.25, "onions" => 0.25 }
	pizza_toppings_split(pizza_toppings).each do |topping|
		empty << toppings_price.values_at(topping)
	end
	empty
end

puts toppings(pizza_toppings)

#def total_price(toppings_subtotal, crust_subtotal, pizza_quantity)
# 	"toppings_subtotal = #{toppings_subtotal}"
# 	"crust_subtotal = #{crust_subtotal}"
# 	"pizza_quantity = #{pizza_quantity}"
# 	empty = []
# 	empty2 = []
# 	empty << "#{toppings_subtotal*pizza_quantity}" 
# 	empty2 << "#{crust_subtotal*pizza_quantity}"
# 	total = []
# 	total << "#{empty+empty2}"
# 	"Your total is #{total}.  Thank you!"
# end
	

# puts total_price(toppings, crust_price)
#puts "Your subtotal is #{crust_price(pizza_crust,pizza_quantity)} plus #{toppings_price(pizza_toppings,pizza_quantity)
#}.

#puts total_price(pizza_toppings,pizza_crust, pizza_quantity)
