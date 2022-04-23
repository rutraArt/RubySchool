#encoding: cp866

choise = ['r', 'p', 's']

puts 'Камень(r), Ножницы(p), Бумага(s)?'
user = gets.strip

computer = choise[rand (0..2)]

if user == 'r'
	puts "Ты выбрал камень!"
elsif user == 'p'
	puts 'Ты выбрал бумагу!'
elsif user == 's'
	puts 'Ты выбрал ножницы!'
else
	puts 'Не то ты выбрал!'
end


def win_u
	puts 'Ты ВыйграЛ !!!'
end

def win_c
	puts 'Компьютер выйграл, ты проиграл!!!'
end

if user == computer 
	puts 'Нечья!!!'
elsif user == 'r' && computer == 's'
	win_u
elsif user == 'p' && computer == 'r'
	win_u
elsif user == 's' && computer == 'p'
	win_u 
else
	win_c
end