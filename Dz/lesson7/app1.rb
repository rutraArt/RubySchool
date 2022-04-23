# encoding: cp866

print 'Сколько Вам лет: '

y = gets.to_i

print 'Хотите играть ? (Y/N)'

a = gets.strip.capitalize

if y >= 18 && a == 'Y'	
	puts 'Хорошо, поираем!'

	money = 100
	puts "Ваш баланс равен #{money} $. Для продолжения нажмите (Enter)"
	gets

	1000.times do
		x = rand(0..5)
		y = rand(0..5)
		z = rand(0..5)
		
		x.times do |xx|
 			volue = rand(0..5)
			if xx < 9
			print volue
			print "\r"
			sleep 0.08
			end
		end

                y.times do |xx|
 			volue = rand(0..5)
			if xx < 9
			print volue
			print "\r"
			sleep 0.08
			end
		end
		
		z.times do |xx|
 			volue = rand(0..5)
			if xx < 9
			print volue
			print "\r"
			sleep 0.08
			end
		end
	
	        if x == y && y == z
			if x == 0 
				puts "Выпало ZERO (#{x},#{y},#{z})"
				money = 0
				puts "Вы проиграли у Вас #{money} денег!"
				sleep 4
				exit	
			end
			
			if x == 1 && x == 2 && x == 3 && x == 4
				puts "Не повезло у Вас выпало #{x},#{y},#{z} !" 
				money = money - 10*x
				puts "Ваш баланс уменьшен на #{10*x}$ и равен #{money}$"
			
			else
				puts "Выпало #{x},#{y},#{z} поздравляем!"
				money = money + 10*x
				puts "Ваш баланс равен: #{money} $ "
			end
		end
		
		if x == 1 && y == 2 && z == 3
			puts "Не повезло у Вас выпало #{x},#{y},#{z} !" 
			money = money - 123
			puts "Ваш баланс уменьшен на 123$ и равен #{money}$"

		end
		
		if x == 3 && y == 7 && z == 3
			puts "Выпало #{x},#{y},#{z} поздравляем!"
			money = money + 150
			puts "Ваш баланс увеличен на 150$ и равен #{money}$"
		end
		
		if money >= 350
			puts "Ваш балан #{money}$ Поздравляем ВЫ ВЫЙГРАЛИ !!!"
			exit 
		end

		puts "Ваш баланс: #{money} $" 
		sleep 0.4
	end	
else 
	puts 'Не соблюдены усовия!'
end

