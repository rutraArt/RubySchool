#encoding: cp866

arr = %w[Artur Sasha Teona Daniel]

loop do #while true
	x = 0
	puts "Список кандидатов!"
	arr.each do |name|
		x = x + 1
		puts "#{x}: #{name} "
	end
	puts "Удалим кого не будь (Y) или добавим (N)!"
	answer = gets.chomp
	
	if answer == "y"
		puts "Кого удалить из кандидатов (номер): "
		n = gets.to_i
	       	
        	arr.delete_at n - 1
	elsif answer == "n"
		puts "Кого добавить в список?"
		new_n = gets.chomp
		arr << new_n
	else 
		exit
	end
end
 