# encoding: cp866

puts "� ������� �᫮, 㣠��� ����� (1..100)? � 10 ࠧ!"

num = rand(1..100)


1.upto(10) do |x|
	print "����� �᫨ ����: " 
        y = gets.strip.to_i
	puts "����⪠ �#{x}, ��⠫��� #{10 - x}"
	if y == num
		puts "������, �������!"
		sleep 1.5
		exit
	elsif y < num 
		puts "#{y}?"
		puts "���, �����!"
		sleep 0.5
	elsif y > num 
		puts "#{y}?"
		puts "���, �����!"
		sleep 0.5
	end
end


