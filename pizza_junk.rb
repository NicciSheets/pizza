=begin puts "Welcome to Nicci's Pizza Shack! How many slices can I get you?"

x = slices
slices = gets.chomp.to_i
class slices


def crust
	crust_style = ["pan crust", "hand tossed"]
end

def crust_price(slices)
	puts "slices #{slices}" 
	if crust == "pan crust"
		crust_price = 3.00*slices
	else crust == "hand tossed"
		crust_price = 2.00*slices
=end

	

=beginend

puts "Great! Would you like pan crust or hand tossed?"

crust_choice = gets.chomp.to_i

crust_choice = ["pan crust", "hand tossed"]
if crust_choice == "pan crust"
	crust_price = "3*slices"
else crust_choice == "hand tossed" 
	crust_price = "2*slices"
end


p crust_price
=end





