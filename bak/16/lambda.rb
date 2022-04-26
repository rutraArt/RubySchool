add_10 = lambda { |x| x + 10 }

add_20 = lambda { |x| x + 20 }

sub_5 = lambda { |x| x - 5 }

hh = { 111 => add_10, 222 => add_10,
	   333 => add_20, 444 => add_20,
	   555 => add_20, 666 => sub_5,
	   777 => sub_5, 888 => sub_5,
	   999 => sub_5 
}

money = 1000

loop do 
	x = rand(100...1000)

	puts "Combination: #{x}"

	if hh[x] 
		f = hh[x]
		money = f.call money
		puts 'Lambda called'
	else 
		money = sub_5.call money
	end

	puts "Balance: #{money} "
	gets
end
