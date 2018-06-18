puts "How many slices would you like?"

pies = gets.chomp.to_i

slice_price = 2.00 * pies 


def sauce_type
	sauce = ["marinara", "alfredo", "barbeque"].sample
end

def veg_options
	vegs = ["green peppers", "mushrooms", "banana peppers", "onions"].sample
end

def pizza_size
	size = ["small", "medium", "large"].sample
end

def meat_toppings
	meat = ["pepperoni", "sausage", "ham", "chicken", "bacon", "none"]
end


puts "What meat toppings would you like to add?"

meat = gets.chomp

def meat
	if pepperoni
		puts slice_price += 1.00
	elsif sausage
		puts slice_price += 1.00
	elsif ham
		puts slice_price += 0.50
	elsif chicken
		puts slice_price += 1.50
	elsif bacon 
		puts slice_price += 1.00
	else none
		puts slice_price 
	end
end



def total_price(meat)
	puts meat
end



puts "This is #{total_price(meat)}. This is number of pies #{pies}, with #{meat}, #{sauce_type} and #{veg_options}.  All size #{pizza_size}"
