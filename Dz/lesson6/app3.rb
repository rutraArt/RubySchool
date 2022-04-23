#encoding: cp866
print 'Какую сумму будем откладывать в месяц: '
sum = gets.to_f

print 'Сколько лет будим копить: '
years = gets.to_i

x = 0


1.upto(years) do |i|
	1.upto(12) do |y|
		x = x + sum
		puts "Год #{i} месяц #{y}, отложенно: #{x}$."
	end 
end