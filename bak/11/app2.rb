#encoding: cp866

book = {'dog' => 'собака', 'cat' => 'кошка', 'girl' => 'девушка'}

loop do
	print 'Введите слово для перевода (Для выхода Enter): '
	key = gets.strip

	
	if key == ''
		print 'Нет перевода'
		break
	end

	puts book[key]
end