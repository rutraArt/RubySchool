#encoding: cp866

@arr = []

def add_items
	loop do #while true
		user = []

		puts "������ �������� ��� ���� �������: "
		name = gets.strip	
		user << name
		
		if name == ""
			break
		end

		puts "������ �������� ������: "
		age = gets.strip.to_i
		user << age
	        	
		@arr << user
	end
end

def display_items
	x = 0
	puts "���᮪ �������⮢!"
	@arr.each do |y|
		x = x + 1
		puts "#{x}:���: #{y[0]}, ������: #{y[1]}"
	end
end

def remove_items
	loop do 
		display_items
	
		puts "������ User 㤠���� (������ �����) ��� ��室� ������ 0: "
		del = gets.strip.to_i

		if del == 0
			break
		end

		@arr.delete_at del - 1
	end
	
end
 
add_items
remove_items
