# encoding: cp866

puts "Я загадал число, угадай какое (1..100)? С 10 раз!"

num = rand(1..100)


1.upto(10) do |x|
	print "Вводи если хочешь: " 
        y = gets.strip.to_i
	puts "Попытка №#{x}, Осталось #{10 - x}"
	if y == num
		puts "Угадал, молодец!"
		sleep 1.5
		exit
	elsif y < num 
		puts "#{y}?"
		puts "Нет, больше!"
		sleep 0.5
	elsif y > num 
		puts "#{y}?"
		puts "Нет, меньше!"
		sleep 0.5
	end
end


