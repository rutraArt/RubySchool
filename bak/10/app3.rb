#encoding: cp866

arr = %w[Artur Sasha Teona Daniel]

loop do #while true
	x = 0
	puts "���᮪ �������⮢!"
	arr.each do |name|
		x = x + 1
		puts "#{x}: #{name} "
	end
	puts "������ ���� �� ��� (Y) ��� ������� (N)!"
	answer = gets.chomp
	
	if answer == "y"
		puts "���� 㤠���� �� �������⮢ (�����): "
		n = gets.to_i
	       	
        	arr.delete_at n - 1
	elsif answer == "n"
		puts "���� �������� � ᯨ᮪?"
		new_n = gets.chomp
		arr << new_n
	else 
		exit
	end
end
 