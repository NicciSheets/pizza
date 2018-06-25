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

toppings_price = {"pepperoni":0.50, "sausage":0.50, "ham":0.75, "bacon":0.75, "green peppers":0.25, "banana peppers":0.25, "olives":0.25, "mushrooms":0.25, "onions":0.25, "pineapple":1.00, "extra cheese":1.00}
sum = "#{pizza_toppings}"
toppings_price.each do |x|
	sum += x
end

puts sum

