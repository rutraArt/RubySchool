
balance = 100

hh = {111 => 10, 222 => 222, 333 => 30, 444 => 40, 555 => 50,
      666 => 60, 777 => 150, 888 => 80, 90 => 90}

loop do 
	
	puts 'Enter to play ...'
	gets

	a = rand(100..999)
	
#	hh.each_key do |x|
#		if x == a 
#			puts "Your balance up to: #{hh[x]} $ !"
#			balance = hh[x] + balance
#			
#			if balance > 500
#				puts "YOU WIN !!! Your balance: #{balance}"
#				exit
#			end
#		elsif x != a
#			puts "Your balance decreased to: -5$ !"
#			balance = balance - 5
#			
#			if balance < 0
#				puts "Your balance: #{balance} YOUR LUSE !!!"
#				exit 
#			end
#		end	
#	end	
        if hh[a]
		balance = balance + hh[a]
	else
		balance = balance - 3
	end

	if balance < 0
		puts "You luse!"
		exit
	end

	puts "You have rolled #{a}"
		
	puts "Your balance: #{balance} $"

	 
end
