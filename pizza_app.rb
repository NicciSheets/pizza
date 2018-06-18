puts "How many slices would you like?"

pies = gets.chomp.to_i

puts "How many toppings would you like?"

toppings = gets.chomp.to_i

slice_price = 2.00 * pies 
total_topping_price = 0.50 * toppings


def meat_toppings
	meat = ["pepperoni", "sausage", "ham", "chicken", "bacon"].sample
end

def sauce_type
	sauce = ["marinara", "alfredo", "barbeque"].sample
end

def veg_options
	vegs = ["green peppers", "mushrooms", "banana peppers", "onions"].sample
end

def pizza_size
	size = ["small", "medium", "large"].sample
end

def total_price(total_topping_price,slice_price)
	puts "total_topping_price#{total_topping_price}"
	puts "slice_price #{slice_price}"
	total_topping_price + slice_price
end



#total(pies, price)

puts "This is $#{total_price(total_topping_price,slice_price)}. This is number of pies #{pies}, with #{meat_toppings}, #{sauce_type} and #{veg_options}.  All size #{pizza_size}"
