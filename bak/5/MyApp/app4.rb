# encoding: cp866

print '����쪮 ��� ���: '

y = gets.to_i

print '���� ����� ? (Y/N)'

a = gets.strip.capitalize

if y >= 18 && a == 'Y'	
	puts '����, ���ࠥ�!'

	money = 100
	puts "��� ������ ࠢ�� #{money} $. ��� �த������� ������ (Enter)"
	gets

	1000.times do
		x = rand(0..9)
		y = rand(0..9)
		z = rand(0..9)

	        if x == y && y == z
			if x == 0 
				puts "�믠�� ZERO (#{x},#{y},#{z})"
				money = 0
				puts "�� �ந�ࠫ� � ��� #{money} �����!"
				sleep 4
				exit	
			end
			
			if x == 6 && x == 7 && x == 8 && x == 9
				puts "�� ������� � ��� �믠�� #{x},#{y},#{z} !" 
				money = money - 10*x
				puts "��� ������ 㬥��襭 �� #{10*x}$ � ࠢ�� #{money}$"
			
			else
				puts "�믠�� #{x},#{y},#{z} ����ࠢ�塞!"
				money = money + 10*x
				puts "��� ������ ࠢ��: #{money} $ "
			end
		end
		
		if x == 1 && y == 2 && z == 3
			puts "�� ������� � ��� �믠�� #{x},#{y},#{z} !" 
			money = money - 123
			puts "��� ������ 㬥��襭 �� 123$ � ࠢ�� #{money}$"
		end
		
		if x == 3 && y == 7 && z == 3
			puts "�믠�� #{x},#{y},#{z} ����ࠢ�塞!"
			money = money + 150
			puts "��� ������ 㢥��祭 �� 150$ � ࠢ�� #{money}$"
		end
		
		if money >= 250
			puts "��� ����� #{money}$ ����ࠢ�塞 �� �������� !!!"
			exit 
		end

		puts money 
		gets
	end	
else 
	puts '�� ᮡ��� �ᮢ��!'
end

