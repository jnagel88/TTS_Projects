# class Dragon

# 	attr_reader :name
# 	attr_accessor :health, :stamina

# 	def initialize(name, health, stamina)
# 		@name = name
# 		@health = health
# 		@stamina = stamina
# 	end

# 	def fly
# 		puts "I'm flyng!"
# 	end
	
# 	def breathe_fire
# 		puts "you breathed fire. You lost 10 stamina."
# 		@stamina -= 10
# 		puts "Stamina: #{@stamina}"
# 	end

# 	def eat_person
# 		puts " you ate a person. You gain 5 stamina."
# 		@stamina += 5
# 		puts "Stamina: #{@stamina}"
# 	end

# 	def attack
# 		puts "You attack a nearby town. You lost 10 health."
# 		@health -= 10
# 		puts "Health: #{@health}"
# 	end

# 	def rest
# 		puts "Your gain 5 health."
# 		@health += 5
# 		puts "Health: #{@health}"
# 	end

# 	# def rename
# 	# 	puts "what do you want your name to be?"
# 	# 	@name = gets.chomp
# 	# 	puts "Your name is now #{@name}."
# 	# end
# end

# dragon1 = Dragon.new("Charmy",100,50)


# dragon1.breathe_fire
# dragon1.eat_person
# dragon1.attack
# dragon1.rest
# dragon1.rename


## User class

class User
	attr_reader :username
	attr_accessor 

	def initialize(username,name,system)
		@username = username
		@name = name
		@system = system
	end
	
	def login
		puts "Enter username:"
		@input = gets.chomp
		if @input == @username
			puts "You are logged in."
		else
			puts "Invalid login"
		end
	end
	def sys_assign
		puts "What operating ssystem do you use?"
		@system = gets.chomp
		puts "You are using a #{@system} computer."
	end
	
end

my_profile = User.new("jnagel88","joe","windows")

my_profile.login



#5 methods
# use read and accessor

# attr: 
:Make
:model 
:year 
:class 
:type 
:body 
:mpg 
:price
:new_used 
:top_speed
:exterior_color
:interior_color
:rimz
:engine_size
:turbo_or_nah
:stock (boolean)

class Nagel_Motors
	attr_reader :Make, :model, :year, :class, :type, :body 
	attr_accessor :mpg,:price, :new_used, :top_speed, :exterior_color, :interior_color, :rims, :engine_size, :turbo_or_nah, :stock

	def initialize(make,model,year,class,type,body,mpg,price,new_used,top_speed,exterior_color,interior_color,rimz,engine_size,turbo_or_nah,stock)
		@make, @model, @year, @class, @type, @body, @mpg, @price, @new_used, @top_speed, @exterior_color, @interior_color, @rimz, @engine_size, @turbo_or_nah, @stock = make,model,year,class,type,body,mpg,price,new_used,top_speed,exterior_color,interior_color,rimz,engine_size,turbo_or_nah,stock
	end

	def drive_home
		
	end