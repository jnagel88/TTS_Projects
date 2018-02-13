
class Product
	attr_accessor :name,:category, :quantity, :serial_number, :cost, :sellprice
	def initialize(name, category, quantity, serial_number, cost, sellprice)
		@name = name
		@category = category
		@quantity = quantity
		@serial_number = serial_number
		@cost = cost
		@sellprice = sellprice
	end

	def about
		puts
		puts "Product Name: #{name}"
		puts "Category: #{@category}"
		puts "Quantity: #{@quantity}"
		puts "Serial Number: #{@serial_number}"
		puts "At Cost: #{@cost}"
		puts "Sell Price: #{@sellprice}"
 	end
end

# Menu options Methods



	def view_categories
		puts "Current categories are:"
		puts $category_arr
	end

	def view_product
		selection = 1

		puts "What product would you like to view?"
		puts "(type '0' to return to the main menu)"
		selection = gets.chomp
		$products.each do |x|
			if selection == x.name
				puts x.about
			end
		end
	end



	def change_pro_quantity
		puts "What product do you want to change?"
		selection = gets.chomp
		puts "What is the new quantity?"
		newquan = gets.chomp.to_i 
		$products.each do |x|
			if selection == x.name
				x.quantity = newquan
				puts "#{x.name} quantity is now #{x.quantity}."
			end
		end

	end

	def add_to_cat
		puts "Enter product name:" 
		newname = gets.chomp
		puts "Enter product category:"
		newcat = gets.chomp
		puts "Enter product quantity:"
		newquan = gets.chomp
		puts "Enter product Serial Number:"
		newserial = gets.chomp
		puts "Enter product at-cost:"
		newcost = gets.chomp
		puts "Enter product sell price:"  
		newsprice = gets.chomp
		puts
		unless $category_arr.include? (newcat)
			$category_arr.push(newcat)
		end
		$products.push(Product.new(newname,newcat,newquan,newserial,newcost,newsprice))
		$products.each do |x|
			if newname == x.name
				puts x.about
			end
		end
	end


def menu
	puts
	puts "Welcome to inventory manangement"
	puts "select an option"
	puts "1. View Categories (works)"
	puts "2. View individual product(works)"
	puts "3. Change the quantity of a product(works)"
	puts "4. Add products to any category"
	puts "0. exit program (works)"
	input = gets.to_i
	case input
		when 1
			# view categories
			view_categories
		when 2
			#view individual product
			view_product

		when 3
			# change quantity of product
			change_pro_quantity
		when 4
			# add $products to any category
			add_to_cat
		when 0
			puts "Are you sure you want to exit?"
			selection = gets.chomp
			if selection == "yes" || selection == "y"
				puts "Terminating application..."
				exit
			end
	end		
	menu
end

$category_arr = [:canned,:dry,:snacks]
# default $products add
	$products = []
	$products.push(Product.new("snickers",:snacks,1,"s0001",0.50,1.75))
	$products.push(Product.new("100 grand",:snacks,1,"s0021",0.55,1.75))
	$products.push(Product.new("milky way",:snacks,1,"s0031",0.60,1.75))
	$products.push(Product.new("twix",:snacks,1,"s0041",0.50,1.75))
	$products.push(Product.new("m&m's",:snacks,1,"s0051",0.50,1.75))
	$products.push(Product.new("tomatoes",:canned,1,"c0001",1.08,1.75))
	$products.push(Product.new("dinty moore",:canned,1,"c0021",0.99,1.75))
	$products.push(Product.new("pasta sauce",:canned,1,"c0031",2.50,3.75))
	$products.push(Product.new("coconut milk",:canned,1,"c0041",0.50,1.75))
	$products.push(Product.new("broth",:canned,1,"c0051",0.50,1.75))
	$products.push(Product.new("white rice",:dry,1,"d0001",0.50,1.75))
	$products.push(Product.new("chickpeas",:dry,1,"d0021",0.50,1.75))
	$products.push(Product.new("split peas",:dry,1,"d0031",0.50,1.75))
	$products.push(Product.new("sea salt",:dry,1,"d0041",0.50,1.75))
	$products.push(Product.new("flour",:dry,1,"d0051",0.50,1.75))

menu