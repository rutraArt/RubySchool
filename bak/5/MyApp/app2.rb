#encoding: cp866

puts 'Сколько раз будем играть ?'

vol = gets.to_i

puts 'Введите ваше любимое число: '

f = gets.to_i
 

1.upto(vol) do |i|
	x = rand(1..10)
	puts "Играем #{i} раз"
	if x == f
		puts 'Поздравляем вы выйграли !!!'
		exit
	else
		puts 'В другой раз !' 
	end
end

	