
number = {}


loop do
	print 'Enter name (Enter to stop): '
	name = gets.strip.capitalize

        if name == ''
		break
	end

	print 'Enter phone number: '
	phone = gets.to_i
	number[name] = phone
end

puts number 
                                
