#encoding: cp866

print "Сколько придет гостей: "
g = gets.to_i

if g < 0
	puts 'От Вас уйдут!'
	exit
end

if g == 0
	puts "Не кто не придет!"
end

if  g == 1 
	puts 'Придет 1 гость!'
end

if g == 2 
	puts 'Придет 2 гостей!'
elsif g > 2 
	puts 'Придет много гостей!' 
end	