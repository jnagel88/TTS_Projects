# games played = 50

# michigan - 50 wins
# wisconsin - 35 wins
# michigan state - 20 wins
# Indiana - 10 wins


def menu
	puts "Welcome to My Tournament Generator. Enter a selection:"
	puts "1. Enter teams"
	puts "2. List teams"
	puts "3. List matchups"
	puts "0. Exit program"
	$input = gets.chomp.to_i
end

# Variable declarations
teamCount = 1
done = 1
teams = {"cowboys" => 10, "falcons" => 20, "rangers" => 11, "stars" =>9}
# Hash.new
until $input == 0
	menu
	case $input
	when 1
		until done == "no" || done == "n"
			puts "Please enter a team name"
			name = gets.chomp
			puts "Enter the teams wins this season"
			wins = gets.chomp
			teams[name] = wins
			teamCount += 1
			puts "Do you have another team to add?"
			done = gets.chomp
		end
	when 2
		puts "Teams up for the tournament are:"
		teams.each do |team, wins|
			puts team
			puts "#{wins} wins"
			end
			puts
	when 3
		# sort hash  by wins
		teams.sort_by { |k,v| v }
		teams.reverse!()
		if teamCount % 2 != 0 
			#drop top team
			puts "#{}"
		else
			# seed all teams
		end
		menu
	end
end
puts "Program Terminated. Returning to Terminal..."
input = 0

teams = {"cowboys" => 10, "falcons" => 20, "rangers" => 11, "stars" =>9}
puts teams.sort_by { |k,v| v }
puts teams