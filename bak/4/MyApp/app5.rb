#encoding: cp866

print 'Какую сумму будем откладыват: '
sum = gets.to_f

print 'Какое количество месяцев: '
mons = gets.to_i

s = 0

1.upto(mons) do |x|
	s = s + sum
	puts "Накопления за #{x} месясев: #{s}"
end
