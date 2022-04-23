#encoding: cp866

print 'Вы довольны своей зарплатой? (Y/N)'
a = gets.strip.capitalize

if a == 'Y'
	puts 'Очень хорошо'
end
if a == 'N'
	puts 'Очень плохо'
end

puts 'Идем дальше'