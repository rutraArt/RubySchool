
puts "Press enter your choise:(R)ock, (S)cissors, (P)aper?"

s = gets.strip.capitalize

if s == "R"
	@user_choise = :rock
elsif s == "S"
	@user_choise = :scissors
elsif s == "P"
	@user_choise = :paper
else 
	puts "Can't understand what you want, sorry..."
	exit
end

arr = [:rock, :scissors, :paper]

@computer_choise = arr[rand(0..2)]

def user_win
	puts "YOUR WIN !!! \nYour choise is #{@user_choise} and computer choise is #{@computer_choise}."
end

def computer_win
	puts "COMPUTER WIN !!! \nYour choise is #{@user_choise} and computer choise is #{@computer_choise}."
end

if @computer_choise == @user_choise
	print "Nobody wins"
elsif @user_choise == :rock && @computer_choise == :scissors
	user_win
elsif @user_choise == :scissors && @computer_choise == :paper
	user_win
elsif @user_choise == :paper && @computer_choise == :rock
	user_win
else
	computer_win 
end




