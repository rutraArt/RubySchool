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
				puts "�믠�� ZERO (#{x},#{y},#{z})"
				money = 0
				puts "�� �ந�ࠫ� � ��� #{money} �����!"
				sleep 4
				exit	
			end
			
			if x == 1 && x == 2 && x == 3 && x == 4
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
		
		if money >= 350
			puts "��� ����� #{money}$ ����ࠢ�塞 �� �������� !!!"
			exit 
		end

		puts "��� ������: #{money} $" 
		sleep 0.4
	end	
else 
	puts '�� ᮡ��� �ᮢ��!'
end

