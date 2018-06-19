class Pizza
	attr_accessor :quantity, :crust, :toppings

	def pizza_order
		"That'll be #{quantity} slices of #{crust} pizza, with #{toppings}."
	end
end

pizza = Pizza.new

puts "Welcome to Nicci's Pizza Barn.  How many slices would you like?"
pizza.quantity = gets.chomp.to_i

puts "Would you like pan crust or hand tossed?"
pizza.crust = gets.chomp

puts "And what toppings would you like? We offer pepperoni, sausage, ham, bacon, green peppers, banana peppers, olives, mushrooms, or onions.  You can also add extra cheese."
pizza.toppings = gets.chomp

puts pizza.pizza_order

def crust_price
	crust = ["pan crust", "hand tossed"]
	if crust == "pan crust"
		"#{quantity}*3.00"
	else crust == "hand tossed"
		"#{quantity}*2.00"
	end
end

def total_price(crust_price)
	puts "crust_price#{crust_price}"
	crust_price
end



puts "Your total will be #{total_price(crust_price)}."




