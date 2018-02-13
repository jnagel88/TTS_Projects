

def menu
	puts "Welcome to My Tournament Generator. Enter a selection:"
	puts "1. Enter teams"
	puts "2. List teams"
	puts "3. List matchups"
	puts "0. Exit program"
	$input = gets.chomp.to_i
end


class Team
		attr_accessor :name, :wins
	def initialize(name,wins)
		@name = name
		@wins = wins
	end

end

teams_arr = []

until $input == 0
	menu
	case $input
	when 1
		done = 1
		until done == "no" || done == "n"
			puts "Please enter a team name"
			name = gets.chomp
			puts "Enter the teams wins this season"
			wins = gets.chomp
			teams_arr.push(Team.new(name,wins))
			puts "Do you have another team to add?"
			done = gets.chomp
		end
	when 2
		teams_arr.each do |team|
			puts "#{team.name} has #{team.wins} wins"
		end

	when 3
		teams_arr.sort_by! {|team| team.wins}
		teams_arr2 = teams_arr.dup
		if (teams_arr2.length) != true
			puts "#{teams_arr2.last.name} has a bye"
			teams_arr2.pop
		end

		(teams_arr2.length / 2).times do
			puts "#{teams_arr2.last.name} vs #{teams_arr2.first.name}"
			teams_arr2.pop
			teams_arr2.shift
		end
	end
end
puts "Program Terminated. Returning to Terminal..."
input = 0


