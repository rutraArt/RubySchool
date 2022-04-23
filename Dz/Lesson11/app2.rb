#encoding: cp866
hash = {'cat'=> ['1111', '222'], 'dog'=> ['111', '222', '333'],
	'gerl' => ['111111111']
	}

loop do 
	print 'ВВедите слово: '
	user = gets.strip
	
	if user == ''
		break
	end

	arr = hash[user]
	
	puts "Количество переводов #{arr.length}"
	puts 'Перевод слова: '
	puts arr 
	 
end