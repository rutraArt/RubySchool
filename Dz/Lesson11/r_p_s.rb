#encoding: cp866

choise = ['r', 'p', 's']

puts '������(r), �������(p), �㬠��(s)?'
user = gets.strip

computer = choise[rand (0..2)]

if user == 'r'
	puts "�� ��ࠫ ������!"
elsif user == 'p'
	puts '�� ��ࠫ �㬠��!'
elsif user == 's'
	puts '�� ��ࠫ �������!'
else
	puts '�� � �� ��ࠫ!'
end


def win_u
	puts '�� �멣ࠋ !!!'
end

def win_c
	puts '�������� �멣ࠫ, �� �ந�ࠫ!!!'
end

if user == computer 
	puts '�����!!!'
elsif user == 'r' && computer == 's'
	win_u
elsif user == 'p' && computer == 'r'
	win_u
elsif user == 's' && computer == 'p'
	win_u 
else
	win_c
end