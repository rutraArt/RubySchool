#encoding: cp866

@arr = []

def add_items
	loop do #while true
		user = []

		puts "Введите пожалуйста имя кого добавим: "
		name = gets.strip	
		user << name
		
		if name == ""
			break
		end

		puts "Введите пожалуйста возраст: "
		age = gets.strip.to_i
		user << age
	        	
		@arr << user
	end
end

def display_items
	x = 0
	puts "Список кандидатов!"
	@arr.each do |y|
		x = x + 1
		puts "#{x}:Имя: #{y[0]}, Возраст: #{y[1]}"
	end
end

def remove_items
	loop do 
		display_items
	
		puts "Какого User удалить (Введите номер) для выхода нажмите 0: "
		del = gets.strip.to_i

		if del == 0
			break
		end

		@arr.delete_at del - 1
	end
	
end
 
add_items
remove_items
